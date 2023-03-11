#[
From OpenCascade tutorial, the are two classes to describe a 3D Cartesian point:
- primitive: gp_Pnt
- transient: Geom_CartesianPoint (manipulated by Handle)

A Handle is a class of Smart Pointer that provides automatic memory management.

So:
- gp_Pnt: useful to create points for the profile's curve for example.
    - Manipulated by value
    - Limited lifetime
- Geom_CartesianPoint:
    - Manipulated by handle
    - May have multiple references
    - Long lifetime

C++ example:
```c++
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);

BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer
```


]#

# How to use Handle
import occt

#var aPnt:Handle[CartesianPoint]

#var aPnt:Handle[GeomCartesianPoint]
# newGeomCartesianPoint(1.1,2.2,3.3) creates a `GeomCartesianPoint` type instance
# (see tkg3d/geom/geom_cartesianpoint.nim)
#var a:GeomCartesianPoint = newGeomCartesianPoint((1.1).cfloat,(2.2).cfloat,(3.3).cfloat)
# var aHandle = newHandle( a ) # <-- This fails: Error: cannot instantiate: 'T'

# We can do it from a `ptr T` rather than a `T`. This is created by means of `cnew`:
#    proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}
#var b:ptr GeomCartesianPoint = cnew newGeomCartesianPoint(1.1,2.2,3.3)
var bHdl = newHandle( cnew newGeomCartesianPoint( 1.1, 2.2, 3.3 ) )  # : Handle[GeomCartesianPoint]  | Handle[geom_types.GeomCartesianPoint]

#echo bHdl.x  #  Error: type mismatch: got <Handle[geom_types.GeomCartesianPoint]>
echo `*`(bHdl).x  # Function `*` converts from `Handle[T]` to `var T`. It is defined in StandardTransient

`*`(bHdl).setY(1.3)

echo `*`(bHdl).y
