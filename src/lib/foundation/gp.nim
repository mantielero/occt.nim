#import ../wrapper/gp_Pnt
import std/strformat
import ../../wrapper/gp/[gp_types, gp_pnt, gp_vec, gp_dir, gp_xyz]
#export gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2

converter toCfloat*[T:SomeNumber](val:T):cfloat =
  val.cfloat

proc pnt*[A,B,C:SomeNumber](x:A,y:B,z:C):gp_Pnt = 
  gp_pnt.pnt(x.cfloat, y.cfloat, z.cfloat)

type
  P3* = tuple[x,y,z:float]  # Nim way
  V3* = distinct P3


type
  gpPoint* = gp_Pnt | gp_Xyz | gp_Dir  | gp_Vec  


proc x*[T:gpPoint](p:T):float =
  p.x.float

proc y*[T:gpPoint](p:T):float =
  p.y.float

proc z*[T:gpPoint](p:T):float =
  p.z.float


proc `x=`*[T:gpPoint, V:SomeNumber](pnt:var T, val:V) =
  pnt.setX(val.cfloat)

proc `y=`*[T:gpPoint, V:SomeNumber](pnt:var T, val:V) =
  pnt.setY(val.cfloat)

proc `z=`*[T:gpPoint, V:SomeNumber](pnt:var T, val:V) =
  pnt.setZ(val.cfloat)


proc `$`*(pnt:gp_Pnt):string =
  &"gp_Pnt(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:gp_Vec):string =
  &"gp_Vec(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:gp_Xyz):string =
  &"gp_Xyz(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `[]`*[P:gpPoint, I:SomeInteger](pnt:P, idx:I):float =
  pnt.coord(idx.cint + 1.cint)


proc `[]=`*[P:gpPoint, I:SomeInteger, X:SomeNumber](pnt:var P, idx:I, val:X) =
  let tmp = val.cfloat
  case idx:
  of 0: pnt.x = tmp
  of 1: pnt.y = tmp
  of 2: pnt.z = tmp
  else: raise newException(ValueError, "the index should be 0..2")

proc set*[P:gpPoint, X,Y,Z:SomeNumber](pnt:var P, x:X, y:Y, z:Z) =
  pnt.setCoord(x.cfloat, y.cfloat, z.cfloat)

#------
proc dir*[A,B,C:SomeNumber](x:A,y:B,z:C):gp_Dir = 
  dir(x.cfloat, y.cfloat, z.cfloat)


#-------
# Inheritance
#type
#  H_GeomCurve* = HandleGeomCurve | HandleGeomTrimmedCurve  # Use this instead of: HandleGeomCurve or Handle[Geomcurve]


#type
#  HandleGeomCurve* {.importcpp:"opencascade::handle<GeomCurve>", header: "Standard_Handle.hxx", bycopy.} = object of RootObj
#  #HandleGeomTrimmedCurve* {.importcpp:"opencascade::handle<GeomTrimmedCurve>", header: "Standard_Handle.hxx", bycopy.} = object of HandleGeomCurve

