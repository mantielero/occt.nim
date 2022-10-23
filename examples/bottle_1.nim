import occt

let
  myWidth = 50.0
  myThickness = 20.0
  myHeight = 70.0
  aPnt1 = pnt(-myWidth / 2.0, 0, 0)
  aPnt2 = pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt3 = pnt(0, -myThickness / 2.0, 0)
  aPnt4 = pnt(myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt5 = pnt(myWidth / 2.0, 0, 0)

echo aPnt2
echo aPnt3
echo aPnt4

let 
  aArcOfCircle:Handle_Geom_TrimmedCurve = arcCircle(aPnt2,aPnt3,aPnt4)
  aSegment1:Handle_Geom_TrimmedCurve = segment(aPnt1, aPnt2)
  aSegment2:Handle_Geom_TrimmedCurve = segment(aPnt4, aPnt5)


# Profile: Defining the Topology
# Converting suporting geometry
var
  aEdge1, aEdge2, aEdge3:TopoDS_Edge  # BRepBuilderAPI_

makeEdge(aSegment1, aEdge1) # BRepBuilderAPI_
makeEdge(aArcOfCircle, aEdge2)
makeEdge(aSegment2, aEdge3)
  #aEdge1 = MakeEdge(aPnt1, aPnt3)
  #aEdge2 = MakeEdge(aPnt4, aPnt5)
let
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
let mkFillet = BRepFilletAPI_MakeFillet(myBody)  # <--- Error: type mismatch: got <TopoDS_Shape> but expected 'BRepFilletAPI_MakeFillet = object'
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
