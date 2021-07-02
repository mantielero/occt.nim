type
  GeomAbsSurfaceType* {.size: sizeof(cint), importcpp: "GeomAbs_SurfaceType",
                       header: "GeomAbs_SurfaceType.hxx".} = enum
    GeomAbsPlane, GeomAbsCylinder, GeomAbsCone, GeomAbsSphere, GeomAbsTorus,
    GeomAbsBezierSurface, GeomAbsBSplineSurface, GeomAbsSurfaceOfRevolution,
    GeomAbsSurfaceOfExtrusion, GeomAbsOffsetSurface, GeomAbsOtherSurface

