import std/strformat
import ../../wrapper/tkernel/standard/[standard_types, standard_handle]
import ../../wrapper/tkg3d/geom/[geom_types,geom_cartesianpoint]
import ../../wrapper/cnew

import ../../wrapper/tkmath/gp/[gp_types]
# ------------------
# GeomCartesianPoint
# ------------------


#proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

type
  HandleCartesianPointObj* = Handle[GeomCartesianPoint]
proc newPnt*[X,Y,Z:SomeNumber](x:X;y:Y;z:Z):HandleCartesianPointObj =
  newHandle( cnew newGeomCartesianPoint( (x).cfloat, (y).cfloat, (z).cfloat ) ) 

# Getting the fields
proc x*(pnt:HandleCartesianPointObj):cfloat =
  `*`(pnt).x
proc y*(pnt:HandleCartesianPointObj):cfloat =
  `*`(pnt).y
proc z*(pnt:HandleCartesianPointObj):cfloat =
  `*`(pnt).z  

proc `$`*(pnt:HandleCartesianPointObj):string =
  return fmt"HandleCartesianPointObj(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

# Setting the fields
proc `x=`*(pnt:var HandleCartesianPointObj; x:SomeNumber) =
  `*`(pnt).setX(x.cfloat)
proc `y=`*(pnt:var HandleCartesianPointObj; y:SomeNumber) =
  `*`(pnt).setY(y.cfloat)
proc `z=`*(pnt:var HandleCartesianPointObj; z:SomeNumber) =
  `*`(pnt).setZ(z.cfloat)


# ===========
# EXPERIMENTS
# ===========
proc newCircle*(c: CircObj): Handle[GeomCircle] {.cdecl, constructor,
                                       importcpp: "new Geom_Circle(@)".}#, dynlib: tkg3d.}  #   header: "Geom_Circle.hxx".} 

converter toObj*(val:Handle[GeomCircle]):GeomCircle =
  `*`(val)

proc radius*(this: Handle[GeomCircle]): cfloat {.noSideEffect, cdecl, importcpp: "#->Radius()".}