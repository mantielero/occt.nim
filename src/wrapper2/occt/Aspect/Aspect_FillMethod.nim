type
  AspectFillMethod* {.size: sizeof(cint), importcpp: "Aspect_FillMethod",
                     header: "Aspect_FillMethod.hxx".} = enum
    AspectFM_NONE, AspectFM_CENTERED, AspectFM_TILED, AspectFM_STRETCH

