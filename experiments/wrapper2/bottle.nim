{.passL: "-lTKBO".}
{.passL: "-lTKSTEP".}
{.passL: "-lTKPrim".}
{.passL: "-lTKSTEPAttr".}
{.passL: "-lTKSTEP209".}
{.passL: "-lTKSTEPBase".}
{.passL: "-lTKXSBase".}
{.passL: "-lTKShHealing".}
{.passL: "-lTKTopAlgo".}
{.passL: "-lTKGeomAlgo".}
{.passL: "-lTKBRep".}
{.passL: "-lTKGeomBase".}
{.passL: "-lTKG3d".}
{.passL: "-lTKG2d".}
{.passL: "-lTKMath".}
{.passL: "-lTKernel".}

{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
#import occt

#type
#  StandardSStream* {.importcpp: "std::stringstream".} = object
#  StandardOStream* {.importcpp: "std::ostream".} = object

include occt/Standard/Standard_includes
include occt/NCollection/NCollection_includes
include occt/gp/gp_includes
include occt/Geom/Geom_includes
include occt/Geom2d/Geom2d_includes
include occt/GC/GC_includes
include occt/TopoDS/TopoDS_includes
include occt/BRepBuilderAPI/BRepBuilderAPI_includes

#import cinterop

proc main() =
  let
    myWidth = 50.0
    myThickness = 20.0
    myHeight = 70.0
    aPnt1 = newPnt(-myWidth / 2.0, 0, 0)
    aPnt2 = newPnt(-myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt3 = newPnt(0, -myThickness / 2.0, 0)
    aPnt4 = newPnt(myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt5 = newPnt(myWidth / 2.0, 0, 0)

  echo aPnt2.x
  echo aPnt3.y
  echo aPnt4.z

  let 
    aArcOfCircle = makeArcOfCircle(aPnt2,aPnt3,aPnt4) # Handle_Geom_TrimmedCurve
    aSegment1    = makeSegment(aPnt1, aPnt2)
    aSegment2    = makeSegment(aPnt4, aPnt5)


  # Profile: Defining the Topology
  # Converting suporting geometry
  var
    #aEdge1:TopoDS_Edge = makeEdge(aSegment1)    # BRepBuilderAPI_MakeEdge
    #aEdge2:TopoDS_Edge = makeEdge(aArcOfCircle)
    #aEdge3:TopoDS_Edge = makeEdge(aSegment2)
    aEdge1:BRepBuilderAPI_MakeEdge = makeEdge(aSegment1)    # BRepBuilderAPI_MakeEdge
    aEdge2:BRepBuilderAPI_MakeEdge = makeEdge(aArcOfCircle)
    aEdge3:BRepBuilderAPI_MakeEdge = makeEdge(aSegment2)

    #aEdge1 = makeEdge(aPnt1, aPnt3)
    #aEdge3 = makeEdge(aPnt4, aPnt5)
    aWire:BRepBuilderAPI_MakeWire = makeWire(aEdge1, aEdge2, aEdge3)


    # Profile: Completing the Profile
    aOrigin = newPnt(0, 0, 0)
    xDir    = newDir(1, 0, 0)
    xAxis   = newAx1(aOrigin, xDir)
    # gp_Ax1 xAxis = gp::OX();


  var aTrsf:Trsf
  aTrsf.setMirror(xAxis)

  # apply the transformation 
  var aBRepTrsf:BRepBuilderAPI_Transform = transform(aWire, aTrsf)
  #[
  var aMirroredShape:TopoDS_Shape  = aBRepTrsf.shape  #cexpr[TopoDS_Shape]^aBRepTrsf.Shape()


  # Get the wire from the shape
  let aMirroredWire:TopoDS_Wire = aMirroredShape.wire

  # Join the wires into a shape
  var mkWire:BRepBuilderAPI_MakeWire
  mkWire.add(aWire)
  mkWire.add(aMirroredWire)
  let myWireProfile:TopoDS_Wire = mkWire.wire 


  # Building the body
  #   let myFaceProfile:BRepBuilderAPI_MakeFace = MakeFace(myWireProfile)
  let myFaceProfile:TopoDS_Face = makeFace(myWireProfile)
  let aPrismVec = newVec(0.0, 0.0, myHeight)
  let myBody:TopoDS_Shape = makePrism(myFaceProfile, aPrismVec)

 # - Applying fillets
  let mkFillet = makeFillet(myBody)

  let anEdgeExplorer = explorer(myBody, sEdge)
  while anEdgeExplorer.more():
    var anEdge = anEdgeExplorer.current.edge
    # Add edge to fillet algorithm
    mkFillet.add(myThickness / 12.0, anEdge)
    anEdgeExplorer.next()

  let myFilletedBody = mkFillet.shape()

  # Adding the Neck
  let neckLocation = newPnt(0, 0, myHeight)
  let neckAxis:Dir = dz()
  let neckAx2 = newAx2(neckLocation, neckAxis)
  
  let myNeckRadius = myThickness / 4.0
  let myNeckHeight = myHeight / 10.0

  let mkCylinder = makeCylinder(neckAx2, myNeckRadius, myNeckHeight)
  let myNeck:TopoDS_Shape = mkCylinder.shape()


  let myBodyFused = fuse(myFilletedBody, myNeck)
  ]#
  # Creating a Hollowed Solid


main()