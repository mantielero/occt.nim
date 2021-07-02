type
  AIS_TypeOfPlane* {.size: sizeof(cint), importcpp: "AIS_TypeOfPlane",
                    header: "AIS_TypeOfPlane.hxx".} = enum
    AIS_TOPL_Unknown, AIS_TOPL_XYPlane, AIS_TOPL_XZPlane, AIS_TOPL_YZPlane

