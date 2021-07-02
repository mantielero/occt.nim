type
  AspectGradientFillMethod* {.size: sizeof(cint),
                             importcpp: "Aspect_GradientFillMethod",
                             header: "Aspect_GradientFillMethod.hxx".} = enum
    AspectGFM_NONE, AspectGFM_HOR, AspectGFM_VER, AspectGFM_DIAG1, AspectGFM_DIAG2,
    AspectGFM_CORNER1, AspectGFM_CORNER2, AspectGFM_CORNER3, AspectGFM_CORNER4

