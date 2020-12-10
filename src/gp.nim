import wrapper/gp/gp

proc Pnt*():gp_Pnt = 
  constructor_gp_Pnt()

proc Pnt*[X,Y,Z:SomeNumber](x:X,y:Y,z:Z):gp_Pnt =
  constructor_gp_Pnt(x.cdouble, y.cdouble, z.cdouble)

proc x*(pnt:gp_Pnt):float =
  pnt.X.float

proc y*(pnt:gp_Pnt):float =
  pnt.Y.float

proc z*(pnt:gp_Pnt):float =
  pnt.Z.float  

proc `$`*(pnt:gp_Pnt):string =
  result = "Pnt(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc `x=`*[T:SomeNumber](pnt:var gp_Pnt,val:T) =
  pnt.SetX(val.cdouble)

proc `y=`*[T:SomeNumber](pnt:var gp_Pnt,val:T) =
  pnt.SetY(val.cdouble)

proc `z=`*[T:SomeNumber](pnt:var gp_Pnt,val:T) =
  pnt.SetZ(val.cdouble)

proc set*[X,Y,Z:SomeNumber](pnt:var gp_Pnt,x:X, y:Y, z:Z) =
  pnt.SetCoord(x.cdouble, y.cdouble, z.cdouble)