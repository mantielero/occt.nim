import std/strformat
import ../../wrapper/standard/[standard_types, standard_handle]
import ../../wrapper/geom/[geom_types,geom_cartesianpoint]
import ../../wrapper/cnew

import ../../wrapper/gp/[gp_types]

# ------------------
# GeomCartesianPoint
# ------------------
type
  HandleCartesianPointObj* = Handle[GeomCartesianPoint]

# proc newGeomCartesianPoint*(p: gp_Pnt): GeomCartesianPoint {.cdecl, constructor,
#     importcpp: "new Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
# proc newGeomCartesianPoint*(x: cfloat; y: cfloat; z: cfloat): GeomCartesianPoint {.
#     cdecl, constructor, importcpp: "new Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}



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
proc newCircle*(c: gp_Circ): Handle[GeomCircle] {.cdecl, constructor,
                                       importcpp: "new Geom_Circle(@)".}#, dynlib: tkg3d.}  #   header: "Geom_Circle.hxx".} 

converter toObj*(val:Handle[GeomCircle]):GeomCircle =
  `*`(val)

proc radius*(this: Handle[GeomCircle]): cfloat {.noSideEffect, cdecl, importcpp: "#->Radius()".}


#
# Prueba
# 

#proc checkType[T](obj:T):bool {.importcpp:"#->dynamicType == ".}
#  aSurface.dynamicType() == GeomPlane

#(aSurface->DynamicType() == STANDARD_TYPE(Geom_Plane))
# FIXME: we need something much more generic

#[
proc downcast*[A; B](this: Handle[A] ): Handle[B] {.cdecl,
    importcpp: "\'0::DownCast(@)".}

proc dcast*[T](this: Handle[auto] ):Handle[T] {.cdecl, importcpp: "\'0::DownCast(@)".}



]#

#proc checkType*[T](obj:Handle[auto]): T {.importcpp:"(#->DynamicType() == \'0::get_type_descriptor())",
#                                            header:"Geom_Plane.hxx".}