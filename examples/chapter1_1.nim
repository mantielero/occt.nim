# https://occtutorials.wordpress.com/2015/12/07/chapter-1-2-curves-from-the-gp-package/
import ../src/tkMath/tkmath

proc main() =
  # Create two point classes, with (x,y,z) coordinates
  var pnt1 = Pnt(0,0,0)
  let pnt2 = Pnt(1,1,1)  # Unmuttable

  # Two ways of showing their coordinates
  echo "pnt1: ", pnt1
  echo "pnt2: ", pnt2.x, " ", pnt2.y, " ", pnt2.z
  echo "Distance between pnt1 and pnt2: ", pnt1.distance(pnt2)

  # Rotate pnt1 around the point2, by 90 degrees 
  var rotation = gp_Trsf()
  var rotationAxis = Ax1( Pnt(1,1,0), Dir(0, 0, 1) )
  rotation.setRotation( rotationAxis, 3.1415926/2.0)
  pnt1.transform(rotation)
  echo "pnt1 after rotation: ", pnt1

  # Create a new point by mirroring pnt1 about the y axis
  let axisOfSymmetry = Ax1( Pnt(0.0,0.0,0.0), Dir(0.0,1.0,0.0) )
  let pnt3 = pnt1.mirrored(axisOfSymmetry)
  echo "pnt3 after mirroring: ", pnt3

when isMainModule:
  main()



