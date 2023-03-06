import ../../wrapper/brepprimapi/brepprimapi_includes

proc box*[X,Y,Z: SomeNumber](dx: X; dy: Y; dz: Z): BRepPrimAPI_MakeBox =
  box(dx.cfloat, dy.cfloat, dz.cfloat)



# proc cylinde*[R,H: SomeNumber](radius: R; height: H): BRepPrimAPI_MakeCylinder =
#   var r = radius.cfloat
#   var h = height.cfloat
#   cylinder(r, h)