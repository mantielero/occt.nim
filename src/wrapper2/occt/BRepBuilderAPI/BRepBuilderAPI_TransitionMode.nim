type
  BRepBuilderAPI_TransitionMode* {.size: sizeof(cint),
                                  importcpp: "BRepBuilderAPI_TransitionMode",
                                  header: "BRepBuilderAPI_TransitionMode.hxx".} = enum
    BRepBuilderAPI_Transformed, BRepBuilderAPI_RightCorner,
    BRepBuilderAPI_RoundCorner

