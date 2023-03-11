# ===========
# 2D
# ===========
# https://dev.opencascade.org/content/what-difference-between-classes-geomplane-and-gppln-and-similar-pairs-classes
import std/[strformat]
import ../../wrapper/gp/gp_includes
import ../../wrapper/standard/standard_includes
import ../../wrapper/geom2d/geom2d_includes


# 2D point
proc cartesianPoint(p: gp_Pnt2d): Handle[Geom2dCartesianPoint] {.cdecl, 
    importcpp: "new Geom2d_CartesianPoint(@)", header: "Geom2d_CartesianPoint.hxx".}

proc cartesianPoint(x: cfloat; y: cfloat): Handle[Geom2dCartesianPoint] {.cdecl, 
    importcpp: "new Geom2d_CartesianPoint(@)", header: "Geom2d_CartesianPoint.hxx".}

proc newPnt*[X,Y: SomeNumber](x:X; y:Y):Handle[Geom2d_CartesianPoint] =
  ## created a point 2D; returns a handle to the point
  cartesianPoint(x.cfloat, y.cfloat)


proc x*(p:Handle[Geom2d_CartesianPoint] ): float =
  `*`(p).x

proc y*(p:Handle[Geom2d_CartesianPoint] ): float =
  `*`(p).y

proc `$`*(pnt:Handle[Geom2dCartesianPoint]):string =
  return fmt"HandleGeom2dCartesianPointObj(x:{pnt.x}, y:{pnt.y})"


proc `x=`*(p:Handle[Geom2d_CartesianPoint]; val: SomeNumber ) =
  `*`(p).setX(val.cfloat)

proc `y=`*(p:Handle[Geom2d_CartesianPoint]; val: SomeNumber ) =
  `*`(p).setY(val.cfloat)

proc distance*[T:Handle[Geom2d_CartesianPoint]](p1, p2:T): float =
  #`*`(p1).distance(p2)
  distance(`*`(p1).Geom2dPoint, p2.HandleGeom2dPoint)  

# proc squareDistance*[T:Handle[Geom2d_CartesianPoint]](p1, p2:T): float =
#   #`*`(p1).distance(p2)
#   squareDistance (`*`(p1).Geom2dPoint, p2.HandleGeom2dPoint)  

# Direction
proc direction(x: cfloat; y: cfloat): Handle[Geom2dDirection] {.cdecl, 
    importcpp: "new Geom2d_Direction(@)", header: "Geom2d_Direction.hxx".}

proc dir*[X,Y: SomeNumber](x:X; y:Y): Handle[Geom2dDirection] =
  direction(x.cfloat, y.cfloat)


proc magnitude*(d:Handle[Geom2dDirection] ): float =
  `*`(d).magnitude


# Axis placement
proc axisPlacement*(a: gp_Ax2d): Handle[Geom2dAxisPlacement] {.cdecl,
    importcpp: "new Geom2d_AxisPlacement(@)", header: "Geom2d_AxisPlacement.hxx".}

proc axisPlacement*[PX,PY,DX,DY:SomeNumber](pntX: PX; pntY: PY; dirX: DX; dirY: DY): Handle[Geom2dAxisPlacement] =
  let p = pnt2d(pntX.cfloat, pntY.cfloat)
  let d = dir2d(dirX.cfloat, dirY.cfloat)
  let ax = ax2d(p, d)
  axisPlacement(ax)


proc reverse*(this: Handle[Geom2dAxisPlacement]) =
  `*`(this).reverse

# Generics

type
  V = Handle[Geom2dDirection] | Handle[Geom2dAxisPlacement] 
  T = Handle[Geom2d_CartesianPoint] | V 


proc `x=`*(d:T; val: SomeNumber ) =
  `*`(d).setX(val.cfloat)

proc `y=`*(d:T; val: SomeNumber ) =
  `*`(d).setY(val.cfloat)

proc x*(d: T ): float =
  `*`(d).x

proc y*(d: T ): float =
  `*`(d).y


proc magnitude*(d:V ): float =
  `*`(d).magnitude


# tkg2d/geom2d
proc ellipse*[T:gp_Ax2d|gp_Ax22d]( axis: T; 
               majorRadius: cfloat; 
               minorRadius: cfloat): Handle[Geom2dEllipse] {.
    cdecl, importcpp: "new Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}


proc trimmedCurve*[T:Geom2dCurve | Geom2dEllipse](c: Handle[T]; 
            u1: cfloat; u2: cfloat;
            sense: bool = true; 
            theAdjustPeriodic: bool = true): Handle[Geom2dTrimmedCurve] {.
    cdecl, importcpp: "new Geom2d_TrimmedCurve(@)", header: "Geom2d_TrimmedCurve.hxx".}

proc getPnt*[T:Geom2dTrimmedCurve|Geom2dEllipse; N:SomeNumber](c:Handle[T]; val:N):gp_Pnt2d =
  `*`(c).value(val.cfloat)