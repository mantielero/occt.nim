import occt

var
  myWidth = 50.0
  myThickness = 20.0

  aPnt1 = Pnt(-myWidth / 2.0, 0, 0)
  aPnt2 = Pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt3 = Pnt(0, -myThickness / 2.0, 0)
  aPnt4 = Pnt(myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt5 = Pnt(myWidth / 2.0, 0, 0)

echo aPnt2
echo aPnt3
echo aPnt4
var aArcOfCircle = MakeArcOfCircle(aPnt2,aPnt3,aPnt4)
#Handle(Geom_TrimmedCurve) ;