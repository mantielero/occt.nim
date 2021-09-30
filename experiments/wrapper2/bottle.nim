{.passL:"-lTKBinXCAF -lTKCAF -lTKDCAF -lTKLCAF -lTKVCAF -lTKXCAF -lTKXmlXCAF".}
{.passL:"-lTKSTEP -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXDESTEP"}
{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel".}
{.passL:"-lTKFillet -lTKBool"}

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
include occt/BRepPrim/BRepPrim_includes
include occt/BRepPrimAPI/BRepPrimAPI_includes
include occt/BRepFilletAPI/BRepFilletAPI_includes
include occt/ChFi3d/ChFi3d_includes
include occt/BRep/BRep_includes
#include occt/BRepSweep/BRepSweep_includes
include occt/TopLoc/TopLoc_includes
include occt/TopAbs/TopAbs_includes
include occt/TopExp/TopExp_includes
include occt/TopTools/TopTools_includes
include occt/BRepAlgo/BRepAlgo_includes
include occt/GeomAbs/GeomAbs_includes
include occt/Adaptor2d/Adaptor2d_includes
include occt/Adaptor3d/Adaptor3d_includes
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

#[   echo aPnt2.x
  echo aPnt3.y
  echo aPnt4.z ]#

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
  
  var aMirroredShape:TopoDS_Shape  = aBRepTrsf.shape  #cexpr[TopoDS_Shape]^aBRepTrsf.Shape()


  # Get the wire from the shape
  let aMirroredWire:TopoDS_Wire = aMirroredShape.wire  # newTopoDS_WBRepAlgo_BooleanOperationire(aMirroredShape) #


  # Join the wires into a shape
  var mkWire = makeWire() #:BRepBuilderAPI_MakeWire
  mkWire.add(aWire)
  mkWire.add(aMirroredWire)
  let myWireProfile:TopoDS_Wire = mkWire.wire 


  # Building the body
  #   let myFaceProfile:BRepBuilderAPI_MakeFace = MakeFace(myWireProfile)
  let myFaceProfile:TopoDS_Face = makeFace(myWireProfile)
  let aPrismVec = newVec(0.0, 0.0, myHeight)
  var myBody:BRepPrimAPI_MakePrism = makePrism(myFaceProfile, aPrismVec)  # BRepPrimAPI_MakePrism


  # - Applying fillets
  var mkFillet = makeFillet(myBody)

  var anEdgeExplorer = explorer(myBody, TopAbsEDGE)
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

  var mkCylinder:BRepBuilderAPI_MakeShape = makeCylinder(neckAx2, myNeckRadius, myNeckHeight)
  var myNeck:TopoDS_Shape = mkCylinder.shape()
   

  var myBodyFused = fuse(myFilletedBody, myNeck)
  
  # Creating a Hollowed Solid


main()