#import ../wrapper/tkmath/tkmath#gp/gp_Pnt
import std/strformat
import ../wrapper/tkmath/gp/[gp_types, gp_pnt, gp_vec, gp_dir, gp_xyz]
#import gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2
#export gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2

converter toCfloat*[T:SomeNumber](val:T):cfloat =
  val.cfloat

proc pnt*[A,B,C:SomeNumber](x:A,y:B,z:C):PntObj = 
  gp_pnt.pnt(x.cfloat, y.cfloat, z.cfloat)

type
  P3* = tuple[x,y,z:float]  # Nim way
  V3* = distinct P3


type
  Point* = PntObj | XyzObj | DirObj  | VecObj  


proc x*[T:Point](p:T):float =
  p.x.float

proc y*[T:Point](p:T):float =
  p.y.float

proc z*[T:Point](p:T):float =
  p.z.float


proc `x=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setX(val.cfloat)

proc `y=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setY(val.cfloat)

proc `z=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setZ(val.cfloat)


proc `$`*(pnt:PntObj):string =
  &"Pnt(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:VecObj):string =
  &"Vec(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:XyzObj):string =
  &"Xyz(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `[]`*[P:Point, I:SomeInteger](pnt:P, idx:I):float =
  pnt.coord(idx.cint + 1.cint)


proc `[]=`*[P:Point, I:SomeInteger, X:SomeNumber](pnt:var P, idx:I, val:X) =
  let tmp = val.cfloat
  case idx:
  of 0: pnt.x = tmp
  of 1: pnt.y = tmp
  of 2: pnt.z = tmp
  else: raise newException(ValueError, "the index should be 0..2")

proc set*[P:Point, X,Y,Z:SomeNumber](pnt:var P, x:X, y:Y, z:Z) =
  pnt.setCoord(x.cfloat, y.cfloat, z.cfloat)

#------
proc dir*[A,B,C:SomeNumber](x:A,y:B,z:C):DirObj = 
  dir(x.cfloat, y.cfloat, z.cfloat)


#-------
# Inheritance
#type
#  H_GeomCurve* = HandleGeomCurve | HandleGeomTrimmedCurve  # Use this instead of: HandleGeomCurve or Handle[Geomcurve]


#type
#  HandleGeomCurve* {.importcpp:"opencascade::handle<GeomCurve>", header: "Standard_Handle.hxx", bycopy.} = object of RootObj
#  #HandleGeomTrimmedCurve* {.importcpp:"opencascade::handle<GeomTrimmedCurve>", header: "Standard_Handle.hxx", bycopy.} = object of HandleGeomCurve

# ------------------
# GeomCartesianPoint
# ------------------
import ../wrapper/tkernel/standard/[standard_types, standard_handle]
import ../wrapper/tkg3d/geom/[geom_types,geom_cartesianpoint]
import ../wrapper/cnew

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