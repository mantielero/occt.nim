type
  BRepFeatStatus* {.size: sizeof(cint), importcpp: "BRepFeat_Status",
                   header: "BRepFeat_Status.hxx".} = enum
    BRepFeatNoError, BRepFeatInvalidPlacement, BRepFeatHoleTooLong

