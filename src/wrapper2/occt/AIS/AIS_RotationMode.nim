type
  AIS_RotationMode* {.size: sizeof(cint), importcpp: "AIS_RotationMode",
                     header: "AIS_RotationMode.hxx".} = enum
    AIS_RotationModeBndBoxActive, AIS_RotationModePickLast,
    AIS_RotationModePickCenter, AIS_RotationModeCameraAt,
    AIS_RotationModeBndBoxScene


const
  AIS_RotationModeLOWER* = 0
  AIS_RotationModeUPPER* = aIS_RotationModeBndBoxScene
