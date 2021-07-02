type
  AspectWidthOfLine* {.size: sizeof(cint), importcpp: "Aspect_WidthOfLine",
                      header: "Aspect_WidthOfLine.hxx".} = enum
    AspectWOL_THIN, AspectWOL_MEDIUM, AspectWOL_THICK, AspectWOL_VERYTHICK,
    AspectWOL_USERDEFINED

