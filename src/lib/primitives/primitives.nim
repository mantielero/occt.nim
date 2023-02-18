import ../../wrapper/tkprim/tkprim

proc box*[X,Y,Z:SomeNumber](dx: X; dy: Y; dz: Z): BRepPrimAPI_MakeBox =
  box(dx.cfloat, dy.cfloat, dz.cfloat)

