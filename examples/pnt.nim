# https://github.com/lvk88/OccTutorial
# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
import occt #tkMath/tkmath
import sugar

# Create two point classes, with (x,y,z) coordinates
var pnt1 = Pnt(1.0, 0.2, 2.3)
var pnt2 = Pnt(1, 0.2, -3)
echo "PNT1: ", pnt1
echo "PNT2: ", pnt2

pnt1.x = 3.0
echo pnt1

pnt1.x = 1
echo pnt1

pnt1.set(0, 1.0, 2)
echo pnt1

var pnt3 = Pnt()
pnt3.set(-1,-2,-3)
echo pnt3

#echo pnt3[1]," ", pnt3[2], " ", pnt3[3]
echo pnt3[0]," ", pnt3[1], " ", pnt3[2]

echo pnt1.distance(pnt2), " == ", distance(pnt1, pnt2)
echo pnt1.squareDistance(pnt2)
#echo pnt1.mirrored(pnt2)
# Note: in Nim the aim is to make everything in place and to use dup otherwise
# https://nim-lang.org/blog/2020/04/03/version-120-released.html#dup
pnt1.mirror(pnt2)
echo pnt1
var pnt4 = pnt1.dup: mirror(pnt2)   # This would be equivalent to Mirrored: https://forum.nim-lang.org/t/7240
echo pnt4

pnt4[2] = 3.0
echo pnt4

pnt4.z = -2
echo pnt4


