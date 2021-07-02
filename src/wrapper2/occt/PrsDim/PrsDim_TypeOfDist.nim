type
  PrsDimTypeOfDist* {.size: sizeof(cint), importcpp: "PrsDim_TypeOfDist",
                     header: "PrsDim_TypeOfDist.hxx".} = enum
    PrsDimTypeOfDistUnknown, PrsDimTypeOfDistHorizontal, PrsDimTypeOfDistVertical

