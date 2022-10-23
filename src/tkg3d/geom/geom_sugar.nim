import tkernel/standard/[standard_types, standard_handle]
import geom_types, geom_cartesianpoint

proc newPointCartesian*[X,Y,Z:SomeNumber](x:X; y:Y, z:Z):HandleCartesianPointObj =
  newHandle( cnew cartesianPoint(x.cfloat, y.cfloat, z.cfloat) )

converter toCartesianPointObj*(tmp:HandleCartesianPointObj):var CartesianPointObj  =
  `*`(tmp)

converter toPoint*(tmp:HandleCartesianPointObj):HandlePointObj  {.importcpp:"(@)", header:"Geom_Point.hxx",cdecl.}
