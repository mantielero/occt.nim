import brepbuilderapi_types


type
  BRepBuilderAPI_TransitionMode* {.size:sizeof(cuint),header: "BRepBuilderAPI_TransitionMode.hxx", importcpp: "BRepBuilderAPI_TransitionMode", pure.} = enum
    ## Option to manage discontinuities in Sweep

    BRepBuilderAPI_Transformed = 0,
    BRepBuilderAPI_RightCorner = 1,
    BRepBuilderAPI_RoundCorner = 2



