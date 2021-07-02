type
  AIS_DisplayMode* {.size: sizeof(cint), importcpp: "AIS_DisplayMode",
                    header: "AIS_DisplayMode.hxx".} = enum
    AIS_WireFrame, AIS_Shaded

