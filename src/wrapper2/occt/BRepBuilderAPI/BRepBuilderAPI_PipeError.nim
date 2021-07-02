type
  BRepBuilderAPI_PipeError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_PipeError",
                             header: "BRepBuilderAPI_PipeError.hxx".} = enum
    BRepBuilderAPI_PipeDone, BRepBuilderAPI_PipeNotDone,
    BRepBuilderAPI_PlaneNotIntersectGuide, BRepBuilderAPI_ImpossibleContact

