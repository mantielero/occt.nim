import occt

proc main() =
  let
    myWidth = 50.0
    myThickness = 20.0
    myHeight = 70.0
    aPnt1 = pnt(-myWidth / 2.0, 0, 0)
    aPnt2 = pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt3 = pnt(0, -myThickness / 2.0, 0)
    aPnt4 = pnt(myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt5 = pnt(myWidth / 2.0, 0, 0)

  let 
    aArcOfCircle:HandleGeomTrimmedCurve = arcCircle(aPnt2,aPnt3,aPnt4) # MakeCircle --(converter)--> Handle[GeomTrimmedCurve] 
    aSegment1:HandleGeomTrimmedCurve    = segment(aPnt1, aPnt2)  # MakeSegment --(converter)--> Handle[GeomTrimmedCurve] 
    aSegment2:HandleGeomTrimmedCurve    = segment(aPnt4, aPnt5)
    # Note: HandleGeomCurve = Handle[GeomCurve] 
    # Note: HandleGeomTrimmedCurve should inherit from HandleGeomCurve

  # Profile: Defining the Topology
  # Converting suporting geometry
  var
    #aEdge1:TopoDS_Edge = makeEdge(aSegment1)    # BRepBuilderAPI_MakeEdge
    #aEdge2:TopoDS_Edge = makeEdge(aArcOfCircle)
    #aEdge3:TopoDS_Edge = makeEdge(aSegment2)
    aEdge1:BRepBuilderAPI_MakeEdge = edge(aSegment1)    # BRepBuilderAPI_MakeEdge
    aEdge2:BRepBuilderAPI_MakeEdge = edge(aArcOfCircle)
    aEdge3:BRepBuilderAPI_MakeEdge = edge(aSegment2)

    #aEdge1 = makeEdge(aPnt1, aPnt3)
    #aEdge3 = makeEdge(aPnt4, aPnt5)
    aWire:BRepBuilderAPI_MakeWire = wire(aEdge1, aEdge2, aEdge3)


    # Profile: Completing the Profile
    aOrigin = newPnt(0, 0, 0)
    xDir    = newDir(1, 0, 0)
    xAxis   = newAx1(aOrigin, xDir)
    # gp_Ax1 xAxis = gp::OX();


  var aTrsf:Trsf
  aTrsf.setMirror(xAxis)

  # apply the transformation 
  var aBRepTrsf:BRepBuilderAPI_Transform = transform(aWire, aTrsf)
  
  var aMirroredShape:TopoDS_Shape  = aBRepTrsf.shape


  # Get the wire from the shape
  let aMirroredWire:TopoDS_Wire = aMirroredShape.wire  # newTopoDS_WBRepAlgo_BooleanOperationire(aMirroredShape) #


  # Join the wires into a shape
  var mkWire = wire() #:BRepBuilderAPI_MakeWire
  mkWire.add(aWire)
  mkWire.add(aMirroredWire)
  let myWireProfile:TopoDS_Wire = mkWire.wire 


  # Building the body
  #   let myFaceProfile:BRepBuilderAPI_MakeFace = MakeFace(myWireProfile)
  let myFaceProfile:TopoDS_Face = face(myWireProfile)
  let aPrismVec = newVec(0.0, 0.0, myHeight)
  var myBody:BRepPrimAPI_MakePrism = newPrism(myFaceProfile, aPrismVec)  # BRepPrimAPI_MakePrism


  # - Applying fillets
  var mkFillet = newFillet(myBody)

  var anEdgeExplorer = newExplorer(myBody, topAbsEDGE)
  while anEdgeExplorer.more():
    var anEdge = anEdgeExplorer.current.edge
    # Add edge to fillet algorithm
    mkFillet.add(myThickness / 12.0, anEdge)
    anEdgeExplorer.next()

  let myFilletedBody = mkFillet.shape()

  # Adding the Neck
  let neckLocation = newPnt(0, 0, myHeight)
  let neckAxis:Dir = dzAsDir()
  let neckAx2 = newAx2(neckLocation, neckAxis)

  let myNeckRadius = myThickness / 4.0
  let myNeckHeight = myHeight / 10.0

  var mkCylinder:BRepBuilderAPI_MakeShape = newCylinder(neckAx2, myNeckRadius, myNeckHeight)
  var myNeck:TopoDS_Shape = mkCylinder.shape()
   

  var myBodyFused = fuse(myFilletedBody, myNeck)
  
  # Creating a Hollowed Solid

#[
STEPControl_Writer writer; 
writer.Transfer(source, STEPControl_ManifoldSolidBrep); 
 
// Translates TopoDS_Shape into manifold_solid_brep entity 
writer.Write(;Output.stp;); 
// writes the resulting entity in the STEP file 
 
]#
main()