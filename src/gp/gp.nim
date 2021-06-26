

import gp_types
import gp_Pnt
import gp_XYZ
import gp_Ax1, gp_Ax2
import gp_Vec
import gp_Trsf, gp_Dir
import gp_Circ
#[
include "gp_Trsf2d.nim"
include "gp_GTrsf2d.nim"
include "gp_VectorWithNullMagnitude.nim"
include "gp_Dir2d.nim"
include "gp_Vec2d.nim"
include "gp_Cone.nim"
include "gp_Ax2.nim"
include "gp_Elips2d.nim"
include "gp_Pnt2d.nim"
include "gp_Hypr.nim"
include "gp_Circ2d.nim"
include "gp_Quaternion.nim"
include "gp_Pln.nim"
]#

#[
include "gp_Ax2d.nim"
include "gp_Circ.nim"
include "gp_Hypr2d.nim"
include "gp_Lin.nim"
include "gp_Sphere.nim"
include "gp_Parab2d.nim"
include "gp_Elips.nim"
include "gp_QuaternionNLerp.nim"
include "gp_Cylinder.nim"
include "gp_QuaternionSLerp.nim"
include "gp_Ax3.nim"
include "gp_Mat2d.nim"
include "gp_Ax22d.nim"

include "gp_Lin2d.nim"
include "gp_Torus.nim"

include "gp_GTrsf.nim"
include "gp_Mat.nim"
include "gp_EulerSequence.nim"
include "gp_TrsfForm.nim"
include "gp_XY.nim"
include "gp_TrsfNLerp.nim"

include "gp_Parab.nim"

include "gp_Dir.nim"
]#

export gp_types, gp_Pnt, gp_XYZ, gp_Ax1, gp_Ax2, gp_Vec, gp_Trsf, gp_Dir, gp_Circ


type
  Point = gp_Pnt | gp_Vec  | gp_XYZ | gp_Dir

proc `$`*(pnt:gp_Pnt):string =
  result = "Pnt(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `$`*(pnt:gp_Vec):string =
  result = "Vec(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `$`*(pnt:gp_XYZ):string =
  result = "XYZ(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `$`*(pnt:gp_Dir):string =
  result = "Dir(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc x*[T:Point](p:T):float =
  p.x.float

proc y*[T:Point](p:T):float =
  p.y.float

proc z*[T:Point](p:T):float =
  p.z.float

proc `x=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setX(val.cdouble)

proc `y=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setY(val.cdouble)

proc `z=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setZ(val.cdouble)

proc `[]`*[P:Point, I:SomeInteger](pnt:P, idx:I):float =
  pnt.coord(idx.cint + 1.cint).float

#proc `[]`*[I:SomeInteger](pnt:gp_Pnt, idx:I):float =
#  pnt.coord(idx.cint).float

proc `[]=`*[P:Point, I:SomeInteger, X:SomeNumber](pnt:var P, idx:I, val:X) =
  let tmp = val.cdouble
  case idx:
  of 0: pnt.setX(tmp)
  of 1: pnt.setY(tmp)  
  of 2: pnt.setZ(tmp)
  else: raise newException(ValueError, "the index should be 0..2")

proc set*[P:Point, X,Y,Z:SomeNumber](pnt:var P, x:X, y:Y, z:Z) =
  pnt.setCoord(x.cdouble, y.cdouble, z.cdouble)

#[
proc Pnt*[X,Y,Z:SomeNumber](x:X,y:Y,z:Z):gp_Pnt =
  constructor_gp_Pnt(x.cdouble, y.cdouble, z.cdouble) 
]#