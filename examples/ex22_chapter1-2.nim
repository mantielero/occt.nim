# https://occtutorials.wordpress.com/2015/12/07/chapter-1-2-curves-from-the-gp-package/
import occt
import math  # For Pi
import strformat  # For fmt"Hello {name}" like formatting

proc main() =
  #[
  We create a circle centered at (2.5,2.5) with a radius of 2.5 
  A circle needs to know
  its center (2.5,2.5)
  its orientation (lies on the xy plane, i.e. its normal is the z axis)
  its radius (2.5)
  ]# 
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
  let circle2 = circle.scaled( newPnt(2.5,2.5,0.0), 2.0)
  echo "Scaled circle area is: ", circle2.area
  echo "Scaled circle circumference is: ", circle2.length
  #[
  Evaluating geometric entities happens through the ElClib package
  ElClib = Elementary Curve operations
  We now evaluate 15 points on the circle and write the resulting coordinates into a file
  ]# 
  # Divide the interval into 100 points
  let numberOfSamplePoints = 20
  let deltaU = 2.0*Pi/(numberOfSamplePoints - 1).float

  let f = open("chapter1_2_circlePoints.txt", fmWrite)
  defer: f.close()

  var lib:ElCLib
  for i in 0..<numberOfSamplePoints:
    let delta = (i.float * deltaU).cdouble
    let pointOnCircle = lib.value(delta, circle)
    f.writeLine( fmt"{pointOnCircle.x} {pointOnCircle.y} {pointOnCircle.z}" )

  # We can evaluate the tangent vector by using the D1 function from ElClib
  let f1 = open("chapter1_2_circleTangents.txt", fmWrite)
  defer: f1.close()  

  for i in 0..<numberOfSamplePoints:
    let delta = (i.float * deltaU).cdouble
    var pointOnCircle:Pnt
    var tangentVector:Vec
    lib.d1(delta, circle2, pointOnCircle, tangentVector)
    f1.writeLine( fmt"{pointOnCircle.x} {pointOnCircle.y} {pointOnCircle.z} {tangentVector.x} {tangentVector.y} {tangentVector.z}" )
  
  #[ 
  Exercise: create an ellipse from the gp package, evaluate 25 points on its circumference together
  with the local NORMAL vectors that are pointing outwards. Note: to get the normal vector, simply rotate 
  the tangent by 90 degrees clockwise  
  ]#

main()



