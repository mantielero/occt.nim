# https://github.com/lvk88/OccTutorial
# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
import occt
import sugar  # Provides: `dup`

# Create two point classes, with (x,y,z) coordinates (you can mix integers and floats)
var pnt1 = pnt(1.0, 0.2, 2.3)
var pnt2 = pnt(1, 0.2, -3)
echo "PNT1: ", pnt1  # Shows: PNT1: Pnt(x:1.0, y:0.2000000029802322, z:2.299999952316284)
echo "PNT2: ", pnt2  # Shows: PNT2: Pnt(x:1.0, y:0.2000000029802322, z:-3.0)

pnt1.x = 3.0
echo pnt1            # Shows: Pnt(x:3.0, y:0.2000000029802322, z:2.299999952316284) 

pnt1.x = 1
echo pnt1            # Shows: Pnt(x:1.0, y:0.2000000029802322, z:2.299999952316284)

pnt1.set(0, 1.0, 2)
echo pnt1            # Shows: Pnt(x:0.0, y:1.0, z:2.0)

var pnt3 = pnt()
pnt3.set(-1,-2,-3)
echo pnt3            # Shows: Pnt(x:-1.0, y:-2.0, z:-3.0)

#echo pnt3[0]
echo pnt3[0]," ", pnt3[1], " ", pnt3[2]                 # Shows: -1.0 -2.0 -3.0

echo pnt1.distance(pnt2), " == ", distance(pnt1, pnt2)  # 5.161395072937012 == 5.161395072937012
echo pnt1.squareDistance(pnt2)                          # 26.63999938964844

echo pnt1.mirrored(pnt2)
# Note: in Nim the aim is to make everything in place and to use dup otherwise
# https://nim-lang.org/blog/2020/04/03/version-120-released.html#dup
pnt1.mirror(pnt2)                   # Pnt1 mirrored with regard to Pnt2
echo "PNT1: ", pnt1                 # Shows: PNT1: Pnt(x:2.0, y:-0.6000000238418579, z:-8.0)

# Note: with Nim's dup, there is no need for opencascade "mirrored" version of of "mirror".  
var pnt4 = pnt1.dup: mirror(pnt2)   # This would be equivalent to Mirrored: https://forum.nim-lang.org/t/7240; we will get the original Pnt1
echo "PNT4: ", pnt4                 # Shows: PNT4: Pnt(x:0.0, y:1.0, z:2.0)          

pnt4[2] = 3.0
echo pnt4      # Shows: Pnt(x:0.0, y:1.0, z:3.0)

pnt4.z = -2
echo pnt4      # Shows: Pnt(x:0.0, y:1.0, z:-2.0)
