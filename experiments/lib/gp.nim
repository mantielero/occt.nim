import cinterop

import gp_Pnt, gp_XYZ
export gp_Pnt, gp_XYZ




type
  Point* = Pnt | XYZ # | gp_Vec   | gp_Dir





#[
proc `$`*(pnt:gp_Vec):string =
  result = "Vec(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `$`*(pnt:gp_XYZ):string =
  result = "XYZ(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `$`*(pnt:gp_Dir):string =
  result = "Dir(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"
]#
proc x*[T:Point](p:T):cfloat =
  cexpr[cfloat]^p.X()

proc y*[T:Point](p:T):cfloat =
  cexpr[cfloat]^p.Y()

proc z*[T:Point](p:T):cfloat =
  cexpr[cfloat]^p.Z()


proc `x=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  cexpr^pnt.SetX(val.cdouble)

proc `y=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  cexpr^pnt.SetY(val.cdouble)

proc `z=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  cexpr^pnt.SetZ(val.cdouble)


proc `$`*(pnt:Point):string =
  result = "Pnt(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"


proc `[]`*[P:Point, I:SomeInteger](pnt:P, idx:I):float =
  cexpr[float]^pnt.Coord(idx.cint + 1.cint)#.float


proc `[]=`*[P:Point, I:SomeInteger, X:SomeNumber](pnt:var P, idx:I, val:X) =
  let tmp = val.cdouble
  case idx:
  of 0: pnt.x = tmp
  of 1: pnt.y = tmp
  of 2: pnt.z = tmp
  else: raise newException(ValueError, "the index should be 0..2")

proc set*[P:Point, X,Y,Z:SomeNumber](pnt:var P, x:X, y:Y, z:Z) =
  cexpr^pnt.SetCoord(x.cdouble, y.cdouble, z.cdouble)

#[
proc newPnt*(x,y,z:SomeNumber):Pnt = 
  var p = Pnt()
  p.set(x, y, z)
  return p
]#
