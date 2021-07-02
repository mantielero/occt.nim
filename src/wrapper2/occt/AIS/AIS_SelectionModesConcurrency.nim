type
  AIS_SelectionModesConcurrency* {.size: sizeof(cint),
                                  importcpp: "AIS_SelectionModesConcurrency",
                                  header: "AIS_SelectionModesConcurrency.hxx".} = enum
    AIS_SelectionModesConcurrencySingle,
    AIS_SelectionModesConcurrencyGlobalOrLocal,
    AIS_SelectionModesConcurrencyMultiple

