import occt

let
  myWidth = 50.0
  myThickness = 20.0
  myHeight = 70.0
  aPnt1 = Pnt(-myWidth / 2.0, 0, 0)
  aPnt2 = Pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt3 = Pnt(0, -myThickness / 2.0, 0)
  aPnt4 = Pnt(myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt5 = Pnt(myWidth / 2.0, 0, 0)

echo aPnt2
echo aPnt3
echo aPnt4

let 
  aArcOfCircle:Handle_Geom_TrimmedCurve = MakeArcOfCircle(aPnt2,aPnt3,aPnt4)
  aSegment1:Handle_Geom_TrimmedCurve = MakeSegment(aPnt1, aPnt2)
  aSegment2:Handle_Geom_TrimmedCurve = MakeSegment(aPnt4, aPnt5)


# Profile: Defining the Topology
# Converting suporting geometry
let
  aEdge1:TopoDS_Edge = MakeEdge(aSegment1) # BRepBuilderAPI_
  aEdge2:TopoDS_Edge = MakeEdge(aArcOfCircle)
  aEdge3:TopoDS_Edge = MakeEdge(aSegment2)

  #aEdge1 = MakeEdge(aPnt1, aPnt3)
  #aEdge2 = MakeEdge(aPnt4, aPnt5)

  aWire:TopoDS_Wire = MakeWire(aEdge1, aEdge2, aEdge3)

  # Profile: Completing the Profile
  aOrigin = Pnt(0, 0, 0)
  xDir    = Dir(1, 0, 0)
  xAxis   = Ax1(aOrigin, xDir)

  # gp_Ax1 xAxis = gp::OX();

var aTrsf:gp_Trsf
aTrsf.setMirror(xAxis)

# apply the transformation 
var aBRepTrsf = BRepBuilderAPI_Transform(aWire, aTrsf)
var aMirroredShape:TopoDS_Shape  = aBRepTrsf.shape()

# Get the wire from the shape
let aMirroredWire:TopoDS_Wire = wire(aMirroredShape)

# Join the wires into a shape
var mkWire:BRepBuilderAPI_MakeWire
mkWire.add(aWire)
mkWire.add(aMirroredWire)
let myWireProfile:TopoDS_Wire = mkWire.wire 

# Building the body
#let myFaceProfile:BRepBuilderAPI_MakeFace = MakeFace(myWireProfile)
let myFaceProfile:TopoDS_Face = MakeFace(myWireProfile)
let aPrismVec = Vec(0.0, 0.0, myHeight)
let myBody:TopoDS_Shape = MakePrism(myFaceProfile, aPrismVec)

# - Applying fillets
let mkFillet = BRepFilletAPI_MakeFillet(myBody)
#let anEdgeExplorer = TopExp_Explorer(myBody, TopAbs_EDGE)
mkFillet.add(myThickness / 12.0, anEdge)
myBody = mkFillet.shape()


let neckLocation = gp_Pnt(0, 0, myHeight)
#let neckAxis = gp_Dir  = gp::DZ();
let neckAx2 = gp_Ax2(neckLocation, neckAxis)

let myNeckRadius:Standard_Real = myThickness / 4.0
let myNeckHeight:Standard_Real = myHeight / 10.0
let mkCylinder = BRepPrimAPI_MakeCylinder(neckAx2, myNeckRadius, myNeckHeight)
let myNeck:TopoDS_Shape = mkCylinder.shape()

myBody = BRepAlgoAPI_Fuse(myBody, myNeck)

# Creating a Hollowed Solid
