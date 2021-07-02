type
  AIS_SelectStatus* {.size: sizeof(cint), importcpp: "AIS_SelectStatus",
                     header: "AIS_SelectStatus.hxx".} = enum
    AIS_SS_Added, AIS_SS_Removed, AIS_SS_NotDone

