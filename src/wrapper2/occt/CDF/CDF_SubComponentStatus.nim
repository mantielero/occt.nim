type
  CDF_SubComponentStatus* {.size: sizeof(cint),
                           importcpp: "CDF_SubComponentStatus",
                           header: "CDF_SubComponentStatus.hxx".} = enum
    CDF_SCS_Consistent, CDF_SCS_Unconsistent, CDF_SCS_Stored, CDF_SCS_Modified

