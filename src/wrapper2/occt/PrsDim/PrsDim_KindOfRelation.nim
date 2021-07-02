type
  PrsDimKindOfRelation* {.size: sizeof(cint), importcpp: "PrsDim_KindOfRelation",
                         header: "PrsDim_KindOfRelation.hxx".} = enum
    PrsDimKOR_NONE = 0, PrsDimKOR_CONCENTRIC, PrsDimKOR_EQUALDISTANCE,
    PrsDimKOR_EQUALRADIUS, PrsDimKOR_FIX, PrsDimKOR_IDENTIC, PrsDimKOR_OFFSET,
    PrsDimKOR_PARALLEL, PrsDimKOR_PERPENDICULAR, PrsDimKOR_TANGENT,
    PrsDimKOR_SYMMETRIC

