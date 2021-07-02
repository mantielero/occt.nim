type
  AspectTypeOfResize* {.size: sizeof(cint), importcpp: "Aspect_TypeOfResize",
                       header: "Aspect_TypeOfResize.hxx".} = enum
    AspectTOR_UNKNOWN, AspectTOR_NO_BORDER, AspectTOR_TOP_BORDER,
    AspectTOR_RIGHT_BORDER, AspectTOR_BOTTOM_BORDER, AspectTOR_LEFT_BORDER,
    AspectTOR_TOP_AND_RIGHT_BORDER, AspectTOR_RIGHT_AND_BOTTOM_BORDER,
    AspectTOR_BOTTOM_AND_LEFT_BORDER, AspectTOR_LEFT_AND_TOP_BORDER

