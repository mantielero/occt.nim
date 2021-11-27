# https://github.com/lvk88/OccTutorial
# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
import occt

# Create two point classes, with (x,y,z) coordinates
var xyz1 = newXyz(1.0, 0.2, 2.3)
echo "XYZ1: ", xyz1
echo "Modulus: ", xyz1.modulus
echo "SquareModulus: ", xyz1.squareModulus

var xyz2 = newXyz(3.0, 1.0, -1.0)
echo "XYZ2: ", xyz2
xyz1.add(xyz2)
echo "XYZ1: ", xyz1
xyz1 += xyz2
echo "XYZ1: ", xyz1

xyz1 = newXyz(1, 0,  0)
xyz2 = newXyz(0, 1,  0)
xyz1.cross(xyz2)
echo xyz1
echo "SUM: ", xyz1, " + ", xyz2, " = ", xyz1 + xyz2