import occt/gp/gp_includes

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

  echo aPnt2
  echo aPnt3
  echo aPnt4

  let 
    aArcOfCircle:Handle_Geom_TrimmedCurve  = makeArcOfCircle(aPnt2,aPnt3,aPnt4) 
    aSegment1:Handle_Geom_TrimmedCurve = makeSegment(aPnt1, aPnt2)
    aSegment2:Handle_Geom_TrimmedCurve = makeSegment(aPnt4, aPnt5)


  # Profile: Defining the Topology
  # Converting suporting geometry
  let
    aEdge1:TopoDS_Edge = makeEdge(aSegment1) # BRepBuilderAPI_
    aEdge2:TopoDS_Edge = makeEdge(aArcOfCircle)
    aEdge3:TopoDS_Edge = makeEdge(aSegment2)

    #aEdge1 = makeEdge(aPnt1, aPnt3)
    #aEdge3 = makeEdge(aPnt4, aPnt5)
    aWire:TopoDS_Wire = makeWire(aEdge1, aEdge2, aEdge3)


    # Profile: Completing the Profile
    aOrigin = newPnt(0, 0, 0)
    xDir    = newDir(1, 0, 0)
    xAxis   = newAx1(aOrigin, xDir)
    # gp_Ax1 xAxis = gp::OX();


  var aTrsf:gp_Trsf
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