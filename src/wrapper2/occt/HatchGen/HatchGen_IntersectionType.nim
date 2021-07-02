type
  HatchGenIntersectionType* {.size: sizeof(cint),
                             importcpp: "HatchGen_IntersectionType",
                             header: "HatchGen_IntersectionType.hxx".} = enum
    HatchGenTRUE, HatchGenTOUCH, HatchGenTANGENT, HatchGenUNDETERMINED

