# https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_4.cpp
#[
OpenCASCADE tutorial by Laszlo Kudela
November 2015
This example demonstrates the usage of OpenCASCADE's built in
optimization algorithms. In this example, we fit a circle onto a 
scattered set of points, using math_BFGS. Check out LeastSquaresFitting.hpp
for more details.
]#
import occt
import std/[math, strformat, random]


proc distributePointsOnCurve*[T:gp_Circ; N,M: SomeNumber](curve: T;
                              lowerLimit:N; upperLimit: M;
                              resolution: int):seq[gp_Pnt] =
  # https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/inc/PointOnCurveDistributor.hpp
  var deltaU = (upperLimit.float - lowerLimit.float) / (resolution - 1)
  for i in 0 ..< resolution:
    result &= value(i * deltaU, curve)


proc main() =
  # Create a circle like before
  let 
    centerPoint = pnt(2.5, 2.5, 0)
    axis        = ax2( centerPoint, 
                       dir(0,0,1),  # normal direction
                       dir(1,0,0) ) # 'x' direction
  
  # Creating the circle
  let circle = circ(axis, 2.5)

  # Distribute the points and write them out to a file
  const resolution = 20
  var pointsOnCircle = circle.distributePointsOnCurve(0,2*Pi, resolution)


  # Seed random generator
  randomize()
  var pointsForLeastSquaresFit:seq[gp_Pnt]
  for i in 0 ..< resolution:
    # Create two random numbers between -0.25 and 0.25
    var randomXShift = rand(0.5) - 0.25
    var randomYShift = rand(0.5) - 0.25
    var p = pointsOnCircle[i]
    pointsForLeastSquaresFit &= pnt( p.x + randomXShift, p.y + randomYShift, p.z)

  let f = open("chapter1_4_randomPoints.txt", fmWrite)
  defer: f.close()

  for p in pointsForLeastSquaresFit:
    f.writeLine( fmt"{p.x} {p.y} {p.z}" )  

main()

#[

#include "Chapter1_Basics/inc/PointOnCurveDistributor.hpp"
#include "Chapter1_Basics/inc/WriteCoordinatesToFile.hpp"
#include "Chapter1_Basics/inc/LeastSquaresFitting.hpp"
#include "Utilities/inc/constants.hpp"

#include "TColgp_HArray1OfPnt.hxx"

#include <cstdlib>
#include <ctime>


int main(int argc, char *argv[])
{

	gp_Circ fittedCircle = LeastSquaresFitting::fitLeastSquaresCircleToPoints(pointsForLeastSquaresFit);

	PointOnCurveDistribution::distributePointsOnCurve(fittedCircle,pointsOnCircle,0.0,2.0*PI,resolution);
	WriteCoordinatesToFile::writeCoordinatesToFile("chapter4_fittedpoints.txt",pointsOnCircle);


	
	return 0;
}
]#

#[
class LeastSquaresFitting
{
public:
	LeastSquaresFitting ();
	virtual ~LeastSquaresFitting ();

	static gp_Circ fitLeastSquaresCircleToPoints(const Handle_TColgp_HArray1OfPnt& points);

private:
	struct InitialGuessForLeastSquaresFitting
	{
		InitialGuessForLeastSquaresFitting(gp_Pnt center, double radius)
		{
			myCenterPoint = center;
			myRadius = radius;
		}
		gp_Pnt myCenterPoint;
		double myRadius;
	};

	static InitialGuessForLeastSquaresFitting findInitialGuess(const Handle_TColgp_HArray1OfPnt& points);	

};
]#