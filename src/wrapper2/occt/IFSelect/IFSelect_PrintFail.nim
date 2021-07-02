type
  IFSelectPrintFail* {.size: sizeof(cint), importcpp: "IFSelect_PrintFail",
                      header: "IFSelect_PrintFail.hxx".} = enum
    IFSelectFailOnly, IFSelectFailAndWarn

