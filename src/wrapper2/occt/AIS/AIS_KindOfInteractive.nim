type
  AIS_KindOfInteractive* {.size: sizeof(cint), importcpp: "AIS_KindOfInteractive",
                          header: "AIS_KindOfInteractive.hxx".} = enum
    AIS_KOI_None, AIS_KOI_Datum, AIS_KOI_Shape, AIS_KOI_Object, AIS_KOI_Relation,
    AIS_KOI_Dimension

