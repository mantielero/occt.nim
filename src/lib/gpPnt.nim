#import ../wrapper/tkmath/tkmath#gp/gp_Pnt
import strformat
#import gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2
#export gp_Pnt, gp_XYZ, gp_Dir, gp_Ax1, gp_Trsf, gp_Vec, gp_Ax2
proc newPnt*[A,B,C:SomeNumber](x:A,y:B,z:C):Pnt = 
  newPnt(x.cfloat, y.cfloat, z.cfloat)

type
  Point* = Pnt | XYZ | Dir  # | gp_Vec  


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


proc `$`*(pnt:Pnt):string =
  &"Pnt(x:{pnt.x}, y:{pnt.y}, z:{pnt.z})"


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