# https://github.com/lvk88/OccTutorial
# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
import occt

var xyz1 = xyz(1.0, 0.2, 2.3)
echo "XYZ1: ", xyz1                          # XYZ1: Xyz(x:1.0, y:0.2000000029802322, z:2.299999952316284)
echo "Modulus: ", xyz1.modulus               # Modulus: 2.515949010848999
echo "SquareModulus: ", xyz1.squareModulus   # SquareModulus: 6.329999923706055

var xyz2 = xyz(3.0, 1.0, -1.0)
echo "XYZ2: ", xyz2               # XYZ2: Xyz(x:3.0, y:1.0, z:-1.0)
xyz1.add(xyz2)                    
echo "XYZ1: ", xyz1               # XYZ1: Xyz(x:4.0, y:1.200000047683716, z:1.299999952316284)
xyz1 += xyz2
echo "XYZ1: ", xyz1               # XYZ1: Xyz(x:7.0, y:2.200000047683716, z:0.2999999523162842)

xyz1 = xyz(1, 0,  0)           
xyz2 = xyz(0, 1,  0)
xyz1.cross(xyz2)
echo xyz1                         # Xyz(x:0.0, y:0.0, z:1.0)
echo "SUM: ", xyz1, " + ", xyz2, " = ", xyz1 + xyz2   # SUM: Xyz(x:0.0, y:0.0, z:1.0) + Xyz(x:0.0, y:1.0, z:0.0) = Xyz(x:0.0, y:1.0, z:1.0)








