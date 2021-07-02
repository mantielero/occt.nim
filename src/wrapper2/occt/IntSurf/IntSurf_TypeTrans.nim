type
  IntSurfTypeTrans* {.size: sizeof(cint), importcpp: "IntSurf_TypeTrans",
                     header: "IntSurf_TypeTrans.hxx".} = enum
    IntSurfIn, IntSurfOut, IntSurfTouch, IntSurfUndecided

