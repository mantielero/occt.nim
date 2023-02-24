import occt
import std/[math]

proc main() =
  # Profile : Define Support Points
  let  # immutable
    myWidth = 50.0
    myThickness = 20.0
    myHeight = 70.0
    aPnt1 = pnt(-myWidth / 2.0, 0, 0)
    aPnt2 = pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt3 = pnt(0, -myThickness / 2.0, 0)
    aPnt4 = pnt(myWidth / 2.0, -myThickness / 4.0, 0)
    aPnt5 = pnt(myWidth / 2.0, 0, 0)
  #echo typeof( aPnt1 )  # Use this to print the type of the variable

  # Profile : Define the Geometry
  let # immutable
    aArcOfCircle = arcCircle(aPnt2,aPnt3,aPnt4) # MakeArcOfCircle
    aSegment1    = segment(aPnt1, aPnt2)  # MakeSegment --(converter)--> Handle[GeomTrimmedCurve] 
    aSegment2    = segment(aPnt4, aPnt5)
    # Note: HandleGeomCurve = Handle[GeomCurve] 
    # Note: HandleGeomTrimmedCurve should inherit from HandleGeomCurve

  # Profile: Define the Topology
  # Converting suporting geometry
  var # mutable
    aEdge1 = edge(aSegment1)    
    aEdge2 = edge(aArcOfCircle)
    aEdge3 = edge(aSegment2)   

    aWire = wire(aEdge1, aEdge2, aEdge3)


    # Profile: Completing the Profile
    aOrigin = pnt(0, 0, 0)
    xDir    = dir(1, 0, 0)
    xAxis   = ax1(aOrigin, xDir)
    # gp_Ax1 xAxis = gp::OX();

  # Complete Profile
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

  # Body : Prim the Profile
  let myFaceProfile:TopoDS_Face = face(myWireProfile)
  let aPrismVec = vec(0, 0, myHeight)
  var myBody:TopoDS_Shape = prism(myFaceProfile, aPrismVec)  # BRepPrimAPI_MakePrism


  # - Applying fillets
  var mkFillet = fillet(myBody)

  for anEdge in myBody.getEdges():
    mkFillet.add(myThickness / 12.0, anEdge)

  myBody = mkFillet.shape()

  # Adding the Neck
  let neckLocation = pnt(0, 0, myHeight)
  let neckAxis     = dzAsDir()
  let neckAx2      = ax2(neckLocation, neckAxis)

  let myNeckRadius = myThickness / 4.0
  let myNeckHeight = myHeight / 10.0

  var mkCylinder = cylinder(neckAx2, myNeckRadius, myNeckHeight)
  var myNeck:TopoDS_Shape = mkCylinder.shape()
   

  myBody = fuse(myBody, myNeck)

  # Creating a Hollowed Solid
  var faceToRemove:TopoDS_Face 
  var zMax = -1f

  for aFace in myBody.getFaces():
    var aSurface = aface.surface # Handle(Geom_Surface) aSurface = BRep_Tool::Surface(aFace);
    if aSurface.isGeomPlane:  # Consider only plane surfaces
      var aPlane = downcast[Geom_Surface, GeomPlane](aSurface) # FIXME: this is ugly
      var aPnt = `*`(aPlane).location()
      var aZ = aPnt.z() 

      if aZ > zMax: # We get the plane surface with the highest Z value
        zMax = aZ
        faceToRemove = aFace

  var facesToRemove:TopTools_ListOfShape
  facesToRemove.append(faceToRemove)
  var aSolidMaker:ThickSolid
  aSolidMaker.makeThickSolidByJoin(myBody, facesToRemove, -myThickness / 50.0, 1.0e-3)
  myBody = aSolidMaker.shape()

  # ======================== Threading
  # Threading : Create Surfaces
  var aCyl1 = cylindricalSurface(neckAx2.ax3, myNeckRadius * 0.99)
  var aCyl2 = cylindricalSurface(neckAx2.ax3, myNeckRadius * 1.05)  

  # Threading : Define 2D Curves
  var aPnt   = pnt2d(2f * PI, myNeckHeight / 2f)
  var aDir   = dir2d(2f * PI, myNeckHeight / 4f)
  var anAx2d = ax2d(aPnt, aDir)

  var aMajor = 2f * PI
  var aMinor = myNeckHeight / 10f

  var anEllipse1 = ellipse(anAx2d, aMajor, aMinor) 
  var anEllipse2 = ellipse(anAx2d, aMajor, aMinor/4f)  

  var anArc1 = trimmedCurve(anEllipse1, 0f, PI)
  var anArc2 = trimmedCurve(anEllipse2, 0f, PI)

  var anEllipsePnt1 = anEllipse1.getPnt(0f)
  var anEllipsePnt2 = anEllipse2.getPnt(PI)

  var aSegment = segment(anEllipsePnt1, anEllipsePnt2).toHandleGeom2dTrimmedCurve 

  # Threading : Build Edges and Wires 
  var anEdge1OnSurf1 = edge(anArc1, aCyl1)
  var anEdge2OnSurf1 = edge(aSegment, aCyl1)
  var anEdge1OnSurf2 = edge(anArc2, aCyl2)
  var anEdge2OnSurf2 = edge(aSegment, aCyl2)

  var threadingWire1:BRepBuilderAPI_MakeWire = wire(anEdge1OnSurf1, anEdge2OnSurf1)
  var threadingWire2:BRepBuilderAPI_MakeWire = wire(anEdge1OnSurf2, anEdge2OnSurf2)

  # Threading : Build Edges and Wires
  # FIXME
  buildCurves3d(threadingWire1)
  buildCurves3d(threadingWire2)

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
  aRes.toStep("bottle.stp")

main()

#[ REPLICAD Example
const defaultParams = {
  width: 50,
  height: 70,
  thickness: 30,
};

const { draw, makeCylinder, makeOffset, FaceFinder } = replicad;

const main = (
  r,
  { width: myWidth, height: myHeight, thickness: myThickness }
) => {
  let shape = draw([-myWidth / 2, 0])
    .vLine(-myThickness / 4)
    .threePointsArc(myWidth, 0, myWidth / 2, -myThickness / 4)
    .vLine(myThickness / 4)
    .closeWithMirror()
    .sketchOnPlane()
    .extrude(myHeight)
    .fillet(myThickness / 12);

  const myNeckRadius = myThickness / 4;
  const myNeckHeight = myHeight / 10;
  const neck = makeCylinder(
    myNeckRadius,
    myNeckHeight,
    [0, 0, myHeight],
    [0, 0, 1]
  );

  shape = shape.fuse(neck);

  shape = shape.shell(myThickness / 50, (f) =>
    f.inPlane("XY", [0, 0, myHeight + myNeckHeight])
  );

  const neckFace = new FaceFinder()
    .containsPoint([0, myNeckRadius, myHeight])
    .ofSurfaceType("CYLINDRE")
    .find(shape.clone(), { unique: true });

  const bottomThreadFace = makeOffset(neckFace, -0.01 * myNeckRadius).faces[0];
  const baseThreadSketch = draw([0.75, 0.25])
    .halfEllipse(2, 0.5, 0.1)
    .close()
    .sketchOnFace(bottomThreadFace, "bounds");

  const topThreadFace = makeOffset(neckFace, 0.05 * myNeckRadius).faces[0];
  const topThreadSketch = draw([0.75, 0.25])
    .halfEllipse(2, 0.5, 0.05)
    .close()
    .sketchOnFace(topThreadFace, "bounds");

  const thread = baseThreadSketch.loftWith(topThreadSketch);

  return shape.fuse(thread);
};
]#