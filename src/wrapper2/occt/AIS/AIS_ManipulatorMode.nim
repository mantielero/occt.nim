type
  AIS_ManipulatorMode* {.size: sizeof(cint), importcpp: "AIS_ManipulatorMode",
                        header: "AIS_ManipulatorMode.hxx".} = enum
    AIS_MM_None = 0, AIS_MM_Translation = 1, AIS_MM_Rotation, AIS_MM_Scaling,
    AIS_MM_TranslationPlane

