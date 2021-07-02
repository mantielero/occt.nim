type
  AIS_DisplayStatus* {.size: sizeof(cint), importcpp: "AIS_DisplayStatus",
                      header: "AIS_DisplayStatus.hxx".} = enum
    AIS_DS_Displayed, AIS_DS_Erased, AIS_DS_None

