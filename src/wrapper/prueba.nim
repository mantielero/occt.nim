import occt

# Create two point classes, with (x,y,z) coordinates
var pnt1 = Pnt(0.0,0.0,0.0)
let pnt2 = Pnt(1.0,1.0,1.0)
echo "PNT1: ", pnt1
echo "PNT2: ", pnt2
echo "  X: ", pnt2.x
echo "  Y: ", pnt2.y
echo "  Z: ", pnt2.z

pnt1.x = 3.0
echo "nueva x: ", pnt1.x

let distance = pnt1.Distance(pnt2).cdouble
echo "Distance: ", distance

let rotation = constructor_gp_Trsf()
let rotationAxis = Ax1( Pnt( 1.0, 1.0, 0.0 ), Dir(0.0, 0.0, 1.0) )
rotation.SetRotation(rotationAxis, 3.1415926/2.0)

pnt1.Transform(rotation)
echo "PNT1: ", pnt1
 

let axisOfSymmetry = Ax1(Pnt(0.0,0.0,0.0), Dir(0.0,1.0,0.0) )

let pnt3 = pnt1.Mirrored(axisOfSymmetry)
echo "PNT3 mirrored: ", pnt3


#[
    https://raw.githubusercontent.com/lvk88/OccTutorial/master/Chapter1_Basics/runners/chapter1_1.cpp


#include "gp_Pnt.hxx"
#include "gp_Ax1.hxx"
#include "gp_Trsf.hxx"

#include<iostream>

int main(int argc, char *argv[])
{

	//Create two point classes, with (x,y,z) coordinates
	gp_Pnt pnt1(0.0,0.0,0.0);
	gp_Pnt pnt2(1.0,1.0,1.0);

	//Display their coordinates
  	std::cout << "pnt1: " << pnt1.X() << " " << pnt1.Y() << " " << pnt1.Z() << std::endl;	
  	std::cout << "pnt2: " << pnt2.X() << " " << pnt2.Y() << " " << pnt2.Z() << std::endl;	
	std::cout << "Distance between pnt1 and pnt2: " << pnt1.Distance(pnt2) << std::endl;

	//Rotate pnt1 around the point2, by 90 degrees 
  	gp_Trsf rotation;
	gp_Ax1 rotationAxis(gp_Pnt(1.0,1.0,0.0),gp_Dir(0.0,0.0,1.0));
	rotation.SetRotation(rotationAxis,3.1415926/2.0);	
	pnt1.Transform(rotation);
	std::cout << "pnt1 after rotation: " << pnt1.X() << " " << pnt1.Y() << " " << pnt1.Z()  << std::endl;

	//Create a new point by mirroring pnt1 about the y axis
	gp_Ax1 axisOfSymmetry(gp_Pnt(0.0,0.0,0.0),gp_Dir(0.0,1.0,0.0));
	gp_Pnt pnt3 = pnt1.Mirrored(axisOfSymmetry);
	std::cout << "pnt3 after mirroring: " << pnt3.X() << " " << pnt3.Y() << " " << pnt3.Z()  << std::endl;
	
	return 0;
}
]#