type
  IFSelectRemainMode* {.size: sizeof(cint), importcpp: "IFSelect_RemainMode",
                       header: "IFSelect_RemainMode.hxx".} = enum
    IFSelectRemainForget, IFSelectRemainCompute, IFSelectRemainDisplay,
    IFSelectRemainUndo

