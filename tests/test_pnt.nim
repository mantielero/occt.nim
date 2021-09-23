#[
Using unittest (to consider using testament)

$ nim cpp -r test_pnt
]#
import unittest
import occt #tkMath/tkmath
import sugar

const
  eps = 1.0e-7 ## Epsilon used for float comparisons.

proc `=~`*(x, y: float): bool =
  abs(x - y) < eps

proc main() =
  suite "points":  
    setup:
      var p1 = Pnt(1.0, 0.2, 2.3)
      var p2 = Pnt(1, 0.2, -3)

    test "points creation":
      # give up and stop if this fails
      check(p1.x == 1.0)
      check(p1.y == 0.2)
      check(p1.z == 2.3)

    test "assigment":
      var p3 = Pnt(1, 0.2, -3)
      p3[0] = 1.2
      p3[1] = 1.3
      p3[2] = 1.4
      check(p3.x == 1.2)
      check(p3.y == 1.3)
      check(p3.z == 1.4)
      p3.x = 2.1
      p3.y = 2.2
      p3.z = 2.3            
      check(p3.x == 2.1)
      check(p3.y == 2.2)
      check(p3.z == 2.3)



    test "point re-set":
      p1.set(0,1.0,2)
      check(p1.x == 0.0)
      check(p1.y == 1.0)
      check(p1.z == 2.0)

    test "reading components":
      check(p2[0] == 1.0)
      check(p2[1] == 0.2)
      check(p2[2] == -3.0)
      check(p1[0] == p1.x)    
      check(p1[1] == p1.y)       
      check(p1[2] == p1.z)   

    test "distance":
      var p3 = Pnt(1.0, 1.0, 1.0)
      var p4 = Pnt(13.0, 3.0, 4.0)
      check(p3.distance(p4) =~ 12.52996408614167)
      check(p3.squareDistance(p4) == 157)

    test "conversion to XYZ":
      var p5 = Pnt(1.0, 0.2, 2.3)
      var xyz1 = XYZ(1.0, 0.2, 2.3)      
      check(xyz1.isEqual(p5.xyz,0.000005))
      check(xyz1.isEqual(p5.coord,0.000005))

    test "mirror":
      var p6 = Pnt(1.0, 0.2, 3.0)
      var p7 = Pnt(-1.0,-0.2, -1.0)
      var o = Pnt(0.0, 0.0, 1.0)
      check( p6.mirrored(o).isEqual(p7, 0.000001) )
      p6.mirror(o)
      check(p6.isEqual(p7, 0.000001))
      var p8 = p6.dup: mirror(o) 
      check(Pnt(1.0, 0.2, 3.0).isEqual(p8, 0.0000001))

    #test "rotate":


      #discard
    


main()
GC_fullCollect()
#[
echo pnt1.distance(pnt2), " == ", distance(pnt1, pnt2)
echo pnt1.squareDistance(pnt2)
#echo pnt1.mirrored(pnt2)
# Note: in Nim the aim is to make everything in place and to use dup otherwise
# https://nim-lang.org/blog/2020/04/03/version-120-released.html#dup

echo pnt1
  # This would be equivalent to Mirrored: https://forum.nim-lang.org/t/7240
echo pnt4

pnt4[2] = 3.0
echo pnt4

pnt4.z = -2
echo pnt4
]#