import occt
import std/[math]

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
    aArcOfCircle = arcCircle(aPnt2,aPnt3,aPnt4) # MakeArcOfCircle
    aSegment1    = segment(aPnt1, aPnt2)  # MakeSegment --(converter)--> Handle[GeomTrimmedCurve] 
    aSegment2    = segment(aPnt4, aPnt5)
    # Note: HandleGeomCurve = Handle[GeomCurve] 
    # Note: HandleGeomTrimmedCurve should inherit from HandleGeomCurve
  #echo typeof(aArcOfCircle)
  # Profile: Defining the Topology
  # Converting suporting geometry
  var
    #aEdge1:TopoDS_Edge = makeEdge(aSegment1)    # BRepBuilderAPI_MakeEdge
    #aEdge2:TopoDS_Edge = makeEdge(aArcOfCircle)
    #aEdge3:TopoDS_Edge = makeEdge(aSegment2)
    aEdge1 = edge(aSegment1)    # BRepBuilderAPI_MakeEdge
    aEdge2 = edge(aArcOfCircle) # BRepBuilderAPI_MakeEdge
    aEdge3 = edge(aSegment2)    # BRepBuilderAPI_MakeEdge

    #aEdge1 = makeEdge(aPnt1, aPnt3)
    #aEdge3 = makeEdge(aPnt4, aPnt5)
    aWire:BRepBuilderAPI_MakeWire = wire(aEdge1, aEdge2, aEdge3)


    # Profile: Completing the Profile
    aOrigin = pnt(0, 0, 0)
    xDir    = dir(1, 0, 0)
    xAxis   = ax1(aOrigin, xDir)
    # gp_Ax1 xAxis = gp::OX();


  var aTrsf:TrsfObj
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
  let aPrismVec = vec(0.0, 0.0, myHeight)
  var myBody:TopoDS_Shape = prism(myFaceProfile, aPrismVec)  # BRepPrimAPI_MakePrism


  # - Applying fillets
  var mkFillet = fillet(myBody)

  var anEdgeExplorer = newExplorer(myBody, topAbsEDGE)
  while anEdgeExplorer.more():
    var anEdge = anEdgeExplorer.current.edge
    # Add edge to fillet algorithm
    mkFillet.add(myThickness / 12.0, anEdge)
    anEdgeExplorer.next()

  let myFilletedBody = mkFillet.shape()

  # Adding the Neck
  let neckLocation = pnt(0, 0, myHeight)
  let neckAxis     = dzAsDir()
  let neckAx2 = ax2(neckLocation, neckAxis)

  let myNeckRadius = myThickness / 4.0
  let myNeckHeight = myHeight / 10.0

  var mkCylinder = cylinder(neckAx2, myNeckRadius, myNeckHeight)
  var myNeck:TopoDS_Shape = mkCylinder.shape()
   

  var myBodyFused = fuse(myFilletedBody, myNeck)
  #myBodyFused.toStep("bottle.stp")

  # Creating a Hollowed Solid
  var faceToRemove:TopoDS_Face 
  var zMax = -1f

  #proc `->`[T](p: Handle[T]):

  var aFaceExplorer = newExplorer(myBody, topAbsFACE) # myBodyFused?
  while aFaceExplorer.more():
    var aFace = aFaceExplorer.current.face
    # Check if <aFace> is the top face of the bottle's neck 
    #echo typeof(aFace)
    var aSurface = aface.surface # Handle(Geom_Surface) aSurface = BRep_Tool::Surface(aFace);

    #echo (`*`(aSurface)).get_type_descriptor

    if aSurface.isGeomPlane: 
      var aPlane = downcast[Geom_Surface, GeomPlane](aSurface) # FIXME: this is ugly
      var aPnt = `*`(aPlane).location()
      var aZ = aPnt.z() 
      if aZ > zMax:
        zMax = aZ
        faceToRemove = aFace
    aFaceExplorer.next()

  var facesToRemove:TopTools_ListOfShape
  facesToRemove.append(faceToRemove)
  var aSolidMaker:ThickSolid
  aSolidMaker.makeThickSolidByJoin(myBody, facesToRemove, -myThickness / 50.0, 1.0e-3)
  myBody = aSolidMaker.shape()
  #myBody.toStep("bottle.stp")

  # ======================== Threading
  # Threading : Create Surfaces
  var aCyl1 = newHandle(cnew newGeomCylindricalSurface(neckAx2.ax3, (myNeckRadius * 0.99).cfloat)) #new Geom_CylindricalSurface(neckAx2, myNeckRadius * 0.99);
  var aCyl2 = newHandle(cnew newGeomCylindricalSurface(neckAx2.ax3, (myNeckRadius * 1.05).cfloat))

  # Threading : Define 2D Curves
  var aPnt   = pnt2d(2f * PI, myNeckHeight / 2f)
  var aDir   = dir2d(2f * PI, myNeckHeight / 4f)
  var anAx2d = ax2d(aPnt, aDir)

  var aMajor = 2f * PI
  var aMinor = myNeckHeight / 10f

  var anEllipse1 = newHandle(cnew newGeom2dEllipse(anAx2d, aMajor, aMinor) )
  var anEllipse2 = newHandle(cnew newGeom2dEllipse(anAx2d, aMajor, aMinor / 4f))
  #echo typeof(anEllipse1)  # Handle[geom2d_types.Geom2dEllipse]

  #var tmp1:Handle[Geom2dCurve]
  #tmp1 = anEllipse1
  #echo typeof(tmp1)

  # FIXME
  var anArc1 = newHandle(cnew newGeom2dTrimmedCurve2(anEllipse1, 0.cfloat, PI.cfloat) )
  var anArc2 = newHandle(cnew newGeom2dTrimmedCurve2(anEllipse2, 0.cfloat, PI.cfloat) )

  var anEllipsePnt1:Pnt2dObj = `*`(anEllipse1).value(0f)
  var anEllipsePnt2:Pnt2dObj = `*`(anEllipse2).value(PI)

  var aSegment:HandleGeom2dTrimmedCurve = segment(anEllipsePnt1, anEllipsePnt2).toHandleGeom2dTrimmedCurve 

  # Threading : Build Edges and Wires 
  # FIXME
  var anEdge1OnSurf1_Obj:EdgeObj  = edge2(anArc1, aCyl1) # <Handle[geom2d_types.Geom2dTrimmedCurve], Handle[geom_types.GeomCylindricalSurface]>
  var anEdge1OnSurf1:TopoDS_Edge = anEdge1OnSurf1_Obj.TopoDS_Edge

  var anEdge2OnSurf1_Obj = edge2(aSegment, aCyl1)
  var anEdge2OnSurf1 = anEdge2OnSurf1_Obj.TopoDS_Edge

  var anEdge1OnSurf2_Obj = edge2(anArc2, aCyl2)
  var anEdge1OnSurf2 = anEdge1OnSurf2_Obj.TopoDS_Edge

  var anEdge2OnSurf2_Obj = edge2(aSegment, aCyl2)
  var anEdge2OnSurf2 = anEdge2OnSurf2_Obj.TopoDS_Edge

  var threadingWire1:BRepBuilderAPI_MakeWire = wire(anEdge1OnSurf1, anEdge2OnSurf1)#.TopoDS_Wire
  var threadingWire2:BRepBuilderAPI_MakeWire = wire(anEdge1OnSurf2, anEdge2OnSurf2)
  #var anEdge2OnSurf2 = anEdge2OnSurf2_Obj.TopoDS_Edge

  # Threading : Build Edges and Wires
  # FIXME
  discard buildCurves3d(threadingWire1)
  discard buildCurves3d(threadingWire2)

  # Create Threading
  var aTool = newBRepOffsetAPI_ThruSections(true)
  aTool.addWire(threadingWire1)
  aTool.addWire(threadingWire2)
  aTool.checkCompatibility(false)
  var myThreading = aTool.shape()

  # Building the Resulting Compound 
  var aRes:TopoDS_Compound
  var aBuilder:BRepBuilder
  aBuilder.makeCompound(aRes)
  aBuilder.add(aRes, myBody)
  aBuilder.add(aRes, myThreading)  
  aRes.toSTEP("bottle.stp")

main()

#[ 

    aBuilder.Add (aRes, myBody);
    aBuilder.Add (aRes, myThreading);
 
    return aRes;
}
]#