type
  AspectTypeOfDisplayText* {.size: sizeof(cint),
                            importcpp: "Aspect_TypeOfDisplayText",
                            header: "Aspect_TypeOfDisplayText.hxx".} = enum
    AspectTODT_NORMAL, AspectTODT_SUBTITLE, AspectTODT_DEKALE, AspectTODT_BLEND,
    AspectTODT_DIMENSION, AspectTODT_SHADOW

