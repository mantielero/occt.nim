# https://github.com/lvk88/OccTutorial
# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
import ../src/gp

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

