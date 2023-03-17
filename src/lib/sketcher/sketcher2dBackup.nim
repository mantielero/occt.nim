#[
OpenCascade provides:
- tkg2d/geom2d/geom2d_point: The abstract class Point describes the common behavior of geometric points in 2D space. 
- tkg2d/geom2d/geom2d_cartesianpoint: Describes a point in 2D space 

Some inspiration:
https://github.com/sgenoud/replicad/blob/d1feafcca65ad45475855fe492b6ec2a6527d421/packages/replicad/src/Sketcher2d.ts
]#
import std/sequtils
import ../../wrapper/occt_wrapper
import ../topology/wire
import ../explorer/explorer
import ../exporter/toStep
import ../tkoffset/tkoffset

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

  #Wire3dObj = TopoDS_Wire


proc x*(obj:Point2dObj):float =
  obj[0]

proc y*(obj:Point2dObj):float =
  obj[1]

proc `x=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[0] = val.float

proc `y=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[1] = val.float


proc pnt2d(p: Point2dObj):gp_Pnt2d =
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
  #result = new Sketch2dRef
  #result.points &= [x.float, y.float]
  #result.current = 
  return pnt(x,y)
  
proc vLine*(skt: Sketch2dRef; distance: SomeNumber): Sketch2dRef {.discardable.} =
  ## draw vertical line from last vertex
  var aPnt1 = skt.points[skt.points.high]
  var aPnt2 = aPnt1
  aPnt2.y = aPnt2.y + distance
  skt.points &= aPnt2
  #echo typeof( edge2d(aPnt1.pnt2d, aPnt2.pnt2d))
  var e:TopoDS_Edge = edge2d(aPnt1.pnt2d, aPnt2.pnt2d).toTopoDS_Edge
  skt.segments &= e
  return skt

proc hLine*(skt: Sketch2dRef; distance: SomeNumber): Sketch2dRef {.discardable.} =
  ## draw vertical line from last vertex
  var aPnt1 = skt.points[skt.points.high]
  var aPnt2 = aPnt1
  aPnt2.x = aPnt2.x + distance
  skt.points &= aPnt2
  #echo typeof( edge2d(aPnt1.pnt2d, aPnt2.pnt2d))
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


proc closeWithMirror*(skt: Sketch2dRef): TopoDS_Wire {.discardable.} = 

  # Create the wire (BRepBuilderAPI_MakeWire)
  var w:BRepBuilderAPI_MakeWire = newWire()
  for s in skt.segments:
    w &= s.edge

  var v = newGeom2dVectorWithMagnitude( pnt2d(skt.points[0]), 
                                        pnt2d(skt.points[skt.points.high]) )
  v.normalize

  #newGCE2dMakeMirror*(axis: gp_Ax2d): GCE2dMakeMirror



  # transformation - not used 
  var aTrsf = newGeom2dTransformation()
  var ax = ax2d( pnt2d(skt.points[0]), dir2d(v.x, v.y) )
  #var ax = oX2d() # ox2ax2d( pnt2d(skt.points[0]), dir2d(v.x, v.y) )  
  aTrsf.setMirror(ax) 
  var trf = aTrsf.trsf2d.trsf

  # Apply transformation
  var aBRepTrsf = transform(w, trf)
  #aWire &= aBRepTrsf.shape.wire
  var aMirroredWire = aBRepTrsf.wire
  #var newWireReversed = newWire.reversed.wire

  #var xAxis = ox()
  #var aTrsf:gp_Trsf
  #aTrsf.setMirror(xAxis)
  #var aB = w.transform(aTrsf)
  #var aMirroredShape = aB.shape
  #var aMirroredWire = aMirroredShape.wire

  let myWireProfile = w & aMirroredWire 

  buildCurves3d(myWireProfile)  

  return myWireProfile


#[
  ellipseTo(
    end: Point2D,
    horizontalRadius: number,
    verticalRadius: number,
    rotation = 0,
    longAxis = false,
    sweep = false
  ): this {
    let rotationAngle = rotation;
    let majorRadius = horizontalRadius;
    let minorRadius = verticalRadius;

    if (horizontalRadius < verticalRadius) {
      rotationAngle = rotation + 90;
      majorRadius = verticalRadius;
      minorRadius = horizontalRadius;
    }
    const radRotationAngle = rotationAngle * DEG2RAD;

    /*
     * The complicated part in this function comes from the scaling that we do
     * between standardised units and UV.  We need to:
     *   - stretch the length of the  radiuses and take into account the angle they
     *     make with the X direction
     *   - modify the angle (as the scaling is not homogenous in the two directions
     *     the angle can change.
     */

    const convertAxis = (ax: Point2D) => distance2d(this._convertToUV(ax));
    const r1 = convertAxis(polarToCartesian(majorRadius, radRotationAngle));
    const r2 = convertAxis(
      polarToCartesian(minorRadius, radRotationAngle + Math.PI / 2)
    );

    const xDir = normalize2d(
      this._convertToUV(rotate2d([1, 0], radRotationAngle))
    );
    const [, newRotationAngle] = cartesianToPolar(xDir);

    const { cx, cy, startAngle, endAngle, clockwise, rx, ry } =
      convertSvgEllipseParams(
        this._convertToUV(this.pointer),
        this._convertToUV(end),
        r1,
        r2,
        newRotationAngle,
        longAxis,
        sweep
      );

    const arc = make2dEllipseArc(
      rx,
      ry,
      clockwise ? startAngle : endAngle,
      clockwise ? endAngle : startAngle,
      [cx, cy],
      xDir
    );

    if (!clockwise) {
      arc.reverse();
    }

    this.saveCurve(arc);
    this.pointer = end;
    return this;
  }

  ellipse(
    xDist: number,
    yDist: number,
    horizontalRadius: number,
    verticalRadius: number,
    rotation = 0,
    longAxis = false,
    sweep = false
  ): this {
    const [x0, y0] = this.pointer;
    return this.ellipseTo(
      [xDist + x0, yDist + y0],
      horizontalRadius,
      verticalRadius,
      rotation,
      longAxis,
      sweep
    );
  }

  halfEllipseTo(end: Point2D, minorRadius: number, sweep = false): this {
    const angle = polarAngle2d(end, this.pointer);
    const distance = distance2d(end, this.pointer);

    return this.ellipseTo(
      end,
      distance / 2,
      minorRadius,
      angle * RAD2DEG,
      true,
      sweep
    );
  }

  halfEllipseTo(end: Point2D, minorRadius: number, sweep = false): this {
    const angle = polarAngle2d(end, this.pointer);
    const distance = distance2d(end, this.pointer);

    return this.ellipseTo(
      end,
      distance / 2,
      minorRadius,
      angle * RAD2DEG,
      true,
      sweep
    );
  }

  halfEllipse(
    xDist: number,
    yDist: number,
    minorRadius: number,
    sweep = false
  ): this {
    const [x0, y0] = this.pointer;
    return this.halfEllipseTo([x0 + xDist, y0 + yDist], minorRadius, sweep);
  }
]#


#[
  const baseThreadSketch = draw([0.75, 0.25])
    .halfEllipse(2, 0.5, 0.1)
    .close()
]#
# ------------------ THE FOLLOWING SHOULDN'T BE HERE -----------------

proc extrude*( aWire: TopoDS_Wire; height: SomeNumber ): TopoDS_Shape {.discardable.} =
  let aFace  = aWire.face.face
  let aPrismVec = vec(0, 0, height)
  return prism(aFace, aPrismVec)


proc fillet*(aBody: TopoDS_Shape; radius: SomeNumber): TopoDS_Shape {.discardable.}=
  var mkFillet = fillet(aBody)

  for anEdge in aBody.getEdges():
    mkFillet.add( radius.float, anEdge )  # myThickness / 12.0

  return mkFillet.shape()


proc cylinder*[R,H: SomeNumber]( radius: R; height: H;
                                 position: gp_Pnt;
                                 axis: gp_Dir): TopoDS_Shape =
  let cylAx2 = ax2(position, axis) 
  return cylinder(cylAx2, radius.float, height.float).shape()

# https://replicad.xyz/docs/api/classes/Shell#shell





proc shell*(shp: TopoDS_Shape; offset: SomeNumber; 
            removePlains: varargs[TopoDS_Face];
            tolerance:float = 1.0e-3): TopoDS_Shape =
  ## creates a shape from hollowed shape
  let planes = removePlains.toSeq
  result = shp.makeThickSolidByJoin( planes, offset.float, tolerance)

#[
  shape = shape.shell(myThickness / 50, (f) =>
    f.inPlane("XY", [0, 0, myHeight + myNeckHeight])
  );
]#

#[ChatGPT
To create a solid from a shell using Replicad, you 
can follow these general steps:

Define the shell: Use Replicad to create the initial 
shell, which is a thin-walled, hollow shape that 
represents the outer boundary of the final solid.

Define the thickness: Specify the thickness of the shell 
wall. This can be done by setting a parameter for the 
shell thickness, which can be adjusted later to modify 
the final solid.

Add features: Add any additional features to the 
shell, such as holes, bosses, or fillets. These features
can be added parametrically, meaning that they can be 
defined by parameters that can be modified later.

Create the solid: Once you have defined the shell and 
added any features, use Replicad to generate the solid 
from the shell. This can be done by using the "Convert 
to Solid" or similar function in the Replicad software.

Modify the solid: The final solid can be modified by 
adjusting the parameters that were used to define the 
shell and its features. This allows you to make 
changes to the design of the solid without having 
to recreate it from scratch.

Overall, the "shell" functionality in Replicad allows 
you to create complex shapes by starting with a 
simpler shell and adding features to it. This can 
make the design process more efficient and flexible, 
since changes can be made easily by adjusting the 
parameters that define the shell and its features.
]#

