type
  AspectInteriorStyle* {.size: sizeof(cint), importcpp: "Aspect_InteriorStyle",
                        header: "Aspect_InteriorStyle.hxx".} = enum
    AspectIS_EMPTY = -1, AspectIS_SOLID = 0, AspectIS_HATCH, AspectIS_HIDDENLINE,
    AspectIS_POINT, AspectIS_HOLLOW = aspectIS_EMPTY

