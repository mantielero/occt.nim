type
  AspectTypeOfMarker* {.size: sizeof(cint), importcpp: "Aspect_TypeOfMarker",
                       header: "Aspect_TypeOfMarker.hxx".} = enum
    AspectTOM_EMPTY = -1, AspectTOM_POINT = 0, AspectTOM_PLUS, AspectTOM_STAR,
    AspectTOM_X, AspectTOM_O, AspectTOM_O_POINT, AspectTOM_O_PLUS, AspectTOM_O_STAR,
    AspectTOM_O_X, AspectTOM_RING1, AspectTOM_RING2, AspectTOM_RING3,
    AspectTOM_BALL, AspectTOM_USERDEFINED

