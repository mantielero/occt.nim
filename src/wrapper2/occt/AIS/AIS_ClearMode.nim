type
  AIS_ClearMode* {.size: sizeof(cint), importcpp: "AIS_ClearMode",
                  header: "AIS_ClearMode.hxx".} = enum
    AIS_CM_All, AIS_CM_Interactive, AIS_CM_Filters, AIS_CM_StandardModes,
    AIS_CM_TemporaryShapePrs

