import wrapper/gp/gp
export gp
type
  Point = gp_Pnt | gp_Vec  | gp_XYZ

proc x*[T:Point](p:T):float =
  p.X.float

proc y*[T:Point](p:T):float =
  p.Y.float

proc z*[T:Point](p:T):float =
  p.Z.float

proc `x=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.SetX(val.cdouble)

proc `y=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.SetY(val.cdouble)

proc `z=`*[T:Point, V:SomeNumber](pnt:var T,val:V) =
  pnt.SetZ(val.cdouble)


include gp_Pnt, gp_XYZ, gp_Vec


