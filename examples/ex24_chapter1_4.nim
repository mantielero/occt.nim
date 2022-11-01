# https://occtutorials.wordpress.com/2015/12/14/chapter-1-3-polygonizing-a-circle/
import ../src/occt
import math  # For Pi
import strformat  # For fmt"Hello {name}" like formatting

proc main() =
  # Create a simple box with a size 100x100x50, centered around the origin
  let lowerLeftCornerOfBox = pnt(-50, -50, 0)
  let boxMaker = box( lowerLeftCornerOfBox, 100, 100, 50)
  let box = boxMaker.shape()

  # Create a cylinder with a radius 25.0 and height 50.0, centered at the origin 
  cylinderMaker = MakeCylinder(25.0,50.0)
  cylinder = cylinderMaker.shape

  # Cut the cylinder out from the box
  cutMaker = BRepAlgoAPI_Cut(box,cylinder)
  boxWithHole = cutMaker.shape

  # Write the resulting shape to a file
  let writer:STEPControl_Writer
  writer.transfer( boxWithHole, STEPControl_AsIs)
  writer.Write("boxWithHole.stp")



  # Create a circle like before
  let centerPoint = pnt(2.5, 2.5, 0)
  let normalDirection = dir(0,0,1)
  let xDirection = dir(1,0,0)
  let axis = ax2(centerPoint, normalDirection, xDirection)

  # Creating the circle
  let circle = circ(axis, 2.5)

  # Some convenience functions provided by the circle class
  echo "Circle area is: ", circle.area
  echo "Circle circumference is: ", circle.length

  # Create a scaled copy of the circle
  let circle2 = circle.scaled( pnt(2.5,2.5,0.0), 2.0)
  echo "Scaled circle area is: ", circle2.area
  echo "Scaled circle circumference is: ", circle2.length
  #[
  Evaluating geometric entities happens through the ElClib package
  ElClib = Elementary Curve operations
  We now evaluate 15 points on the circle and write the resulting coordinates into a file
  ]# 
  # Divide the interval into 100 points
  const resolution = 20

  #[
  Here, an array of gp_Pnt is allocated, with 20 elements
  Note that the indexing runs from 1 to 20, instead of the
  standard convention of 0-19  
  ]#
  
  #//Distribute the points and write them out to a file
  #PointOnCurveDistribution::distributePointsOnCurve(circle,pointsOnCircle,0.0,2.0*PI,resolution);
  #WriteCoordinatesToFile::writeCoordinatesToFile("chapter3points.txt",pointsOnCircle);  
  var pointsOnCircle:array[resolution, PntObj]  # A seq would be an option too

  # Template function, small wrapper around the evaluator functions 
  # of ElCLib that we were talking about in the previous tutorial:
  # https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/inc/PointOnCurveDistributor.hpp

  let deltaU = 2.0*Pi/(resolution - 1).float

  var lib:ElCLib
  for i in 0..<resolution:
    let delta = (i.float * deltaU).cdouble
    let pointOnCircle = lib.value(delta, circle)
    pointsOnCircle[i] = pointOnCircle

  #[
  Sum the area of the small triangles, to get an approximate area
  The for loop builds triangles with two corners on the circumference
  and the center of the circle as third point
  ]#
  var totalArea = 0.0
  for i in 0..<resolution:
    let firstPntOfTriangle = pointsOnCircle[i]
    var secondPntOfTriangle:gp_Pnt
    if (i+1) != resolution:
      secondPntOfTriangle = pointsOnCircle[i+1]
    else:
      secondPntOfTriangle = pointsOnCircle[0]
    
    let thirdPntOfTriangle = centerPoint

    # https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/src/AreaCalculations.cpp
    let vec1 = Vec(thirdPntOfTriangle, secondPntOfTriangle)
    let vec2 = Vec(thirdPntOfTriangle, firstPntOfTriangle)
    let area = vec1.crossed(vec2).magnitude / 2.0
    totalArea += area
         
  echo fmt"Polygonized area: {totalArea}"
  echo fmt"Reference area: {circle.area}"
  echo fmt"Error: {abs( (totalArea-circle.area)/circle.area )}"


main()


#[

#include "BRepAlgoAPI_Cut.hxx"
#include "STEPControl_Writer.hxx"

#include "BRepGProp.hxx"
#include "GProp_GProps.hxx"
 
 
int main(int argc, char *argv[])
{
        std::cout << "------- OpenCASCADE Tutorial by Laszlo Kudela -------" << std::endl;  
        std::cout << "------- Chapter 0: Demonstrative example      -------" << std::endl;  
     

 

     

 
    std::cout << "Created box with hole, file is written to boxWithHole.stp" << std::endl;  
 
    //We compute some volumetric properties of the resulting shape
        GProp_GProps volumeProperties;
    BRepGProp::VolumeProperties(boxWithHole,volumeProperties);
 
    //Compute the volume of the model
    std::cout << std::setprecision(14) << "Volume of the model is: " << volumeProperties.Mass() << std::endl;
     
    //Compute the center of mass
    std::cout << "Center of mass is: " << volumeProperties.CentreOfMass().X() << " " << volumeProperties.CentreOfMass().Y() << " " << volumeProperties.CentreOfMass().Z() << std::endl;
 
    //Compute the matrix of inertia
    gp_Mat inertiaMatrix = volumeProperties.MatrixOfInertia();
    std::cout << "Matrix of inertia: " << std::endl;
    for (int i = 1; i <= 3; ++i) {
        for (int j = 1; j <= 3; ++j) {
            std::cout << inertiaMatrix(i,j) << "\t";
        }
        std::cout << std::endl;
    }
 
    return 0;
}  
]#
