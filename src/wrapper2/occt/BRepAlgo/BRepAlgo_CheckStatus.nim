type
  BRepAlgoCheckStatus* {.size: sizeof(cint), importcpp: "BRepAlgo_CheckStatus",
                        header: "BRepAlgo_CheckStatus.hxx".} = enum
    BRepAlgoOK, BRepAlgoNOK

