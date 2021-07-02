type
  AIS_StatusOfDetection* {.size: sizeof(cint), importcpp: "AIS_StatusOfDetection",
                          header: "AIS_StatusOfDetection.hxx".} = enum
    AIS_SOD_Error, AIS_SOD_Nothing, AIS_SOD_AllBad, AIS_SOD_Selected,
    AIS_SOD_OnlyOneDetected, AIS_SOD_OnlyOneGood, AIS_SOD_SeveralGood

