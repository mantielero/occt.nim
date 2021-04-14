import unittest, math
import occt #tkMath/tkmath
import sugar

const
  eps = 1.0e-7 ## Epsilon used for float comparisons.

proc `=~`*(x, y: float): bool =
  abs(x - y) < eps

proc main() =
  suite "directions":  
    setup:
      var d1 = Dir(1.0, 0.2, 2.3)
      echo d1
      var xyz2 = XYZ(3.0, 0.0,0.0)
      var d2 = Dir(xyz2)
      var vec3 = Vec(0.0,1.0,0.0)
      var d3 = Dir(vec3)

    test "direction creation":
      # give up and stop if this fails
      check( sqrt(d1.x^2 + d1.y^2 + d1.z^2) =~ 1.0)
      var tmp = sqrt(1.0^2 + 0.2^2 + 2.3^2) 
      check(d1.x =~ 1.0/tmp )
      check(d1.y =~ 0.2/tmp)
      check(d1.z =~ 2.3/tmp)
    
    #[ This doesn't make much sense with direction
    test "assigment":
      #var d3 = Pnt(1, 0.2, -3)
      echo d3
      d3[0] = 1.2
      echo d3
      d3[1] = 1.3
      echo d3
      d3[2] = 1.4
      echo d3
      check(d3.x == 1.2)
      check(d3.y == 1.3)
      check(d3.z == 1.4)
      d3.x = 2.1
      d3.y = 2.2
      d3.z = 2.3            
      check(d3.x == 2.1)
      check(d3.y == 2.2)
      check(d3.z == 2.3)
    ]#


    test "direction re-set":
      d1.set(1.0,0.0,0.0)
      check(d1.x == 1.0 and d1.y == 0.0 and d1.z == 0.0)
      d1.set(0.0,1.0,0.0)
      check(d1.x == 0.0 and d1.y == 1.0 and d1.z == 0.0)      
      d1.set(0.0,0.0,1.0)
      check(d1.x == 0.0 and d1.y == 0.0 and d1.z == 1.0)       
      #check(d1.z == 2.0)

    test "reading components":
      d1.set(1.0,2.0,3.0)        
      #check(d2[0] == 1.0)
      #check(d2[1] == 0.2)
      #check(d2[2] == -3.0)
      check(d1[0] == d1.x)    
      check(d1[1] == d1.y)       
      check(d1[2] == d1.z)   
#[
    test "distance":
      var d3 = Pnt(1.0, 1.0, 1.0)
      var d4 = Pnt(13.0, 3.0, 4.0)
      check(d3.distance(d4) =~ 12.52996408614167)
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
    
]#

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