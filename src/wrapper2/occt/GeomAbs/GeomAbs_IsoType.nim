type
  GeomAbsIsoType* {.size: sizeof(cint), importcpp: "GeomAbs_IsoType",
                   header: "GeomAbs_IsoType.hxx".} = enum
    GeomAbsIsoU, GeomAbsIsoV, GeomAbsNoneIso

