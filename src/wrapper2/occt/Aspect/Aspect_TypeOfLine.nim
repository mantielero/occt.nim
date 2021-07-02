type
  AspectTypeOfLine* {.size: sizeof(cint), importcpp: "Aspect_TypeOfLine",
                     header: "Aspect_TypeOfLine.hxx".} = enum
    AspectTOL_EMPTY = -1, AspectTOL_SOLID = 0, AspectTOL_DASH, AspectTOL_DOT,
    AspectTOL_DOTDASH, AspectTOL_USERDEFINED

