type
  GeomAbsShape* {.size: sizeof(cint), importcpp: "GeomAbs_Shape",
                 header: "GeomAbs_Shape.hxx".} = enum
    GeomAbsC0, GeomAbsG1, GeomAbsC1, GeomAbsG2, GeomAbsC2, GeomAbsC3, GeomAbsCN

