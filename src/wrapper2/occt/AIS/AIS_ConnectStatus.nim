type
  AIS_ConnectStatus* {.size: sizeof(cint), importcpp: "AIS_ConnectStatus",
                      header: "AIS_ConnectStatus.hxx".} = enum
    AIS_CS_None, AIS_CS_Connection, AIS_CS_Transform, AIS_CS_Both

