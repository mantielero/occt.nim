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
var 
  aArcOfCircle:Handle_Geom_TrimmedCurve = MakeArcOfCircle(aPnt2,aPnt3,aPnt4)
  aSegment1 = MakeSegment(aPnt1, aPnt2)
  aSegment2 = MakeSegment(aPnt4, aPnt5)

var
  aEdge1:TopoDS_Edge = MakeEdge(aSegment1) # BRepBuilderAPI_
  aEdge2 = MakeEdge(aArcOfCircle)
  aEdge3 = MakeEdge(aSegment2)

  #aEdge1 = MakeEdge(aPnt1, aPnt3)
  #aEdge2 = MakeEdge(aPnt4, aPnt5)

  aWire = MakeWire(aEdge1, aEdge2, aEdge3)

  aOrigin = Pnt(0, 0, 0)
  xDir = Dir(1, 0, 0)
  xAxis = Ax1(aOrigin, xDir)

  # gp_Ax1 xAxis = gp::OX();

  aTrsf:gp_Trsf

aTrsf.SetMirror(xAxis)