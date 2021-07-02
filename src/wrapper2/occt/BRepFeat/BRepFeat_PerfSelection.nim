type
  BRepFeatPerfSelection* {.size: sizeof(cint), importcpp: "BRepFeat_PerfSelection",
                          header: "BRepFeat_PerfSelection.hxx".} = enum
    BRepFeatNoSelection, BRepFeatSelectionFU, BRepFeatSelectionU,
    BRepFeatSelectionSh, BRepFeatSelectionShU

