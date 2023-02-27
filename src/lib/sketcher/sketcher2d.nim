#[
OpenCascade provides:
- tkg2d/geom2d/geom2d_point: The abstract class Point describes the common behavior of geometric points in 2D space. 
- tkg2d/geom2d/geom2d_cartesianpoint: Describes a point in 2D space 

]#
import ../../wrapper/occt_wrapper
import ../topology/wire
import ../explorer/explorer
#import ../exporter/toStep

type
  Point2dObj*   = array[2, float] # Point/Coord/Vector 2D
  Segment2dObj* = tuple[p1,p2:Point2dObj]

  PointObj*   = array[3, float] # Point/Coord/Vector 3D

  Sketch2dObj* = object
    points*:seq[Point2dObj]
    segments*:seq[TopoDS_Edge]
    wires*:seq[TopoDS_Wire]
    shapes*:seq[TopoDS_Shape]
  Sketch2dRef* = ref Sketch2dObj

proc x*(obj:Point2dObj):float =
  obj[0]

proc y*(obj:Point2dObj):float =
  obj[1]

proc `x=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[0] = val.float

proc `y=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[1] = val.float


proc pnt2d(p: Point2dObj):Pnt2dObj =
  pnt2d(p.x, p.y)


# proc wire*(edges: varargs[TopoDS_Edge]): BRepBuilderAPI_MakeWire =
#   result = newWire() 
#   for edge in edges:
#     result &= edge


#
# proc `x+=`*(v1: var Point2dObj; v2:SomeNumber) =
#   v1.x = v1.x + v2.float 

# ---------------------------------------------------------

proc start*[X,Y: SomeNumber](x:X; y:Y):Sketch2dRef =
  ## starting point in the 2D sketch
  result = new Sketch2dRef
  result.points &= [x.float, y.float]
  #result.current = 
  
proc vLine*(skt: Sketch2dRef; distance: SomeNumber): Sketch2dRef {.discardable.} =
  ## draw vertical line from last vertex
  var aPnt1 = skt.points[skt.points.high]
  var aPnt2 = aPnt1
  aPnt2.y = aPnt2.y + distance
  skt.points &= aPnt2
  echo typeof( edge2d(aPnt1.pnt2d, aPnt2.pnt2d))
  var e:TopoDS_Edge = edge2d(aPnt1.pnt2d, aPnt2.pnt2d).toTopoDS_Edge
  skt.segments &= e
  return skt


proc edge2d*(L: Handle[Geom2dTrimmedCurve]): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}


proc threePointsArc*[P1X:SomeNumber,P1Y:SomeNumber,P2X:SomeNumber,P2Y: SomeNumber](skt: Sketch2dRef; 
                     p1x: P1X; p1y: P1Y; 
                     p2x: P2X; p2y: P2Y): Sketch2dRef =
  ## draws an arc from latest point using two additional points
  var ini = pnt2d( skt.points[skt.points.high] )
  skt.points &= [p1x.float,p1y.float]
  var middle = pnt2d(p1x, p1y)
  skt.points &= [p2x.float,p2y.float]
  var latest = pnt2d(p2x, p2y)

  var arc = newGCE2dMakeArcOfCircle( ini,
                                     middle,
                                     latest).value # HandleGeom2dTrimmedCurve

  var e = edge2d(arc)
  skt.segments &= e  

  return skt

proc closeWithMirror*(skt: Sketch2dRef): Sketch2dRef {.discardable.} = 
  var v = newGeom2dVectorWithMagnitude( pnt2d(skt.points[0]), 
                                        pnt2d(skt.points[skt.points.high]) )
  v.normalize

  #newGCE2dMakeMirror*(axis: Ax2dObj): GCE2dMakeMirror 
  var aTrsf = newGeom2dTransformation()
  #Ax2dObj
  var ax = ax2d( pnt2d(skt.points[0]), dir2d(v.x, v.y) )
  aTrsf.setMirror(ax) 
  var trf = aTrsf.trsf2d.trsf

  var w:BRepBuilderAPI_MakeWire
  for s in skt.segments:
    w &= s

  # Apply transformation
  var aBRepTrsf = transform(w.shape, trf, true)
  var w2 = w.shape.wire

  var aWire:BRepBuilderAPI_MakeWire = newWire()
  aWire &= w
  aWire &= w2

  #var f = face(aWire.wire, true)  # Error: unhandled unknown cpp exception

  echo aWire.wire.isClosed
  echo "isDone: ", aWire.isDone
  echo w.wire.isClosed
  echo skt.points
  for s in skt.segments:
    var p1 = s.firstVertex.pnt 
    echo p1.x, " ", p1.y, " ", p1.z

  echo "---"
  for v in w.wire.getVertex(): 
    var p1 = v.pnt 
    echo p1.x, " ", p1.y, " ", p1.z

  echo "---"
  for e in w.wire.getEdges(): 
    echo e.isGeometric, " ", e.isClosed
    echo "."
    var first, last: float    
    var aCurve = curve(e, first, last)
    echo `*`(aCurve).firstParameter
    #echo first, " ", last
    #`*`(aCurve).reverse
    

  # Reverse can be done over Geom2d_Curve
  #var v3 = w2.HandleGeom2dCurve
  #echo aWire.isDone
  #var tmp = face()
  #tmp.add(aWire.wire)

  return skt

#[
  protected _closeWithMirror() {
    if (samePoint(this.pointer, this.firstPoint))
      throw new Error(
        "Cannot close with a mirror when the sketch is already closed"
      );
    const startToEndVector: Point2D = [
      this.pointer[0] - this.firstPoint[0],
      this.pointer[1] - this.firstPoint[1],
    ];

    const mirrorAxis = axis2d(
      this._convertToUV(this.pointer),
      this._convertToUV(startToEndVector)
    );

    const mirroredCurves = this.pendingCurves.map(
      (c) =>
        new Curve2D(c.innerCurve.Mirrored_2(mirrorAxis) as Handle_Geom2d_Curve)
    );
    mirroredCurves.reverse();
    mirroredCurves.map((c) => c.reverse());
    this.pendingCurves.push(...mirroredCurves);
    this.pointer = this.firstPoint;
  }
}
]#

#[
  protected _mirrorWireOnStartEnd(wire: Wire): Wire {
    const startToEndVector = this.pointer.sub(this.firstPoint).normalize();
    const normal = startToEndVector.cross(this.plane.zDir);

    const mirroredWire = wire.clone().mirror(normal, this.pointer);

    const combinedWire = assembleWire([wire, mirroredWire]);

    return combinedWire;
  }
]#

# arc1 = BRepBuilderAPI_MakeEdge(geomapi_To3d(trimmed_outer, plane)).Edge()  

#[
export const make2dSegmentCurve = (
  startPoint: Point2D,
  endPoint: Point2D
): Curve2D => {
  const oc = getOC();
  const [r, gc] = localGC();

  const segment = r(
    new oc.GCE2d_MakeSegment_1(r(pnt(startPoint)), r(pnt(endPoint)))
  ).Value();
  const curve = new Curve2D(segment);

  if (!samePoint(curve.firstPoint, startPoint)) {
    curve.reverse();
  }

  gc();
  return curve;
};

export const make2dThreePointArc = (
  startPoint: Point2D,
  midPoint: Point2D,
  endPoint: Point2D
): Curve2D => {
  const oc = getOC();
  const [r, gc] = localGC();

  const segment = r(
    new oc.GCE2d_MakeArcOfCircle_4(
      r(pnt(startPoint)),
      r(pnt(midPoint)),
      r(pnt(endPoint))
    )
  ).Value();
  gc();

  const curve = new Curve2D(segment);
  if (!samePoint(curve.firstPoint, startPoint)) {
    (curve.wrapped.get() as Geom2d_TrimmedCurve).SetTrim(
      curve.lastParameter,
      curve.firstParameter,
      true,
      true
    );
  }
  return curve;
};
]#


#[
// perform validity checks on wire
    BRepCheck_Analyzer analyzer(wire);
    if (!analyzer.IsValid()) {
        std::cout << "Wire is not valid." << std::endl;
    }
    if (!wire.Closed()) {
        std::cout << "Wire is not closed." << std::endl;
    }
    if (!analyzer.IsPlanar()) {
        std::cout << "Wire is not planar." << std::endl;
    }
    if (analyzer.SelfIntersect()) {
        std::cout << "Wire self-intersects." << std::endl;
    }

]#











#[
export const makeThreePointArc = (v1: Point, v2: Point, v3: Point): Edge => {
  const oc = getOC();
  const circleGeom = new oc.GC_MakeArcOfCircle_4(
    asPnt(v1),
    asPnt(v2),
    asPnt(v3)
  ).Value();

  const curve = new oc.Handle_Geom_Curve_2(circleGeom.get());
  return new Edge(new oc.BRepBuilderAPI_MakeEdge_24(curve).Edge());
};
]#