# https://occtutorials.wordpress.com/2015/12/14/chapter-1-3-polygonizing-a-circle/
import occt
import math  # For Pi
import strformat  # For fmt"Hello {name}" like formatting

proc main() =
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
  var pointsOnCircle:array[resolution, gp_Pnt]  # A seq would be an option too

  # Template function, small wrapper around the evaluator functions 
  # of ElCLib that we were talking about in the previous tutorial:
  # https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/inc/PointOnCurveDistributor.hpp

  let deltaU = 2.0*Pi/(resolution - 1).float
#[ FIXME: tkmath/ElCLib
  var lib:ElCLib
  for i in 0..<resolution:
    let delta = (i.float * deltaU).cdouble
    let pointOnCircle = lib.value(delta, circle)
    pointsOnCircle[i] = pointOnCircle
]#
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
    let vec1 = vec(thirdPntOfTriangle, secondPntOfTriangle)
    let vec2 = vec(thirdPntOfTriangle, firstPntOfTriangle)
    let area = vec1.crossed(vec2).magnitude / 2.0
    totalArea += area
         
  echo fmt"Polygonized area: {totalArea}"
  echo fmt"Reference area: {circle.area}"
  echo fmt"Error: {abs( (totalArea-circle.area)/circle.area )}"

when isMainModule:
  main()



