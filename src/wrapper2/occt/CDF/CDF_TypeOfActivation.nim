type
  CDF_TypeOfActivation* {.size: sizeof(cint), importcpp: "CDF_TypeOfActivation",
                         header: "CDF_TypeOfActivation.hxx".} = enum
    CDF_TOA_New, CDF_TOA_Modified, CDF_TOA_Unchanged

