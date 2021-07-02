type
  CDF_TryStoreStatus* {.size: sizeof(cint), importcpp: "CDF_TryStoreStatus",
                       header: "CDF_TryStoreStatus.hxx".} = enum
    CDF_TS_OK, CDF_TS_NoCurrentDocument, CDF_TS_NoDriver,
    CDF_TS_NoSubComponentDriver

