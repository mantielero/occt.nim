#import ../wrapper/tkmath/tkmath#gp/gp_Pnt
{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}
{.experimental: "callOperator".}

import strformat
import gp_types, gp_pnt, gp_xyz, gp_vec
#import gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2
#export gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2


type
  Point* = PntObj | XyzObj | DirObj  | VecObj 


#[ proc x*[T:Point](p:T):float =
  p.x.float

proc y*[T:Point](p:T):float =
  p.y.float

proc z*[T:Point](p:T):float =
  p.Z.float ]#


proc `x=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setX(val.cfloat)

proc `y=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setY(val.cfloat)

proc `z=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.setZ(val.cfloat)


proc `$`*(pnt:PntObj):string =
  &"PntObj(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:VecObj):string =
  &"VecObj(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `$`*(pnt:XyzObj):string =
  &"XyzObj(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"

proc `[]`*[P:Point, I:SomeInteger](pnt:P, idx:I):float =
  #var tmp:cint = idx.cint + 1.cint
  #pnt.coord(tmp)
  case idx:
  of 0: pnt.x
  of 1: pnt.y
  of 2: pnt.z
  else: raise newException(ValueError, "the index should be 0..2")



proc `[]=`*[P:Point, I:SomeInteger, X:SomeNumber](pnt:var P, idx:I, val:X) =
  let tmp = val.cfloat
  case idx:
  of 0: pnt.x = tmp
  of 1: pnt.y = tmp
  of 2: pnt.z = tmp
  else: raise newException(ValueError, "the index should be 0..2")

proc pnt*[A,B,C:SomeNumber](x:A,y:B,z:C):PntObj = 
  pnt(x.cfloat, y.cfloat, z.cfloat)

proc set*[P:Point, X,Y,Z:SomeNumber](pnt:var P, x:X, y:Y, z:Z) =
  pnt.setCoord(x.cfloat, y.cfloat, z.cfloat)

#------
#proc newDir*[A,B,C:SomeNumber](x:A,y:B,z:C):Dir = 
#  newDir(x.cfloat, y.cfloat, z.cfloat)

