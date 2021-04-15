import brepbuilderapi_types


type
  BRepBuilderAPI_PipeError* {.size:sizeof(cuint),header: "BRepBuilderAPI_PipeError.hxx", importcpp: "BRepBuilderAPI_PipeError", pure.} = enum
    ## Errors that can occur at (shell)pipe construction.

    BRepBuilderAPI_PipeDone = 0,
    BRepBuilderAPI_PipeNotDone = 1,
    BRepBuilderAPI_PlaneNotIntersectGuide = 2,
    BRepBuilderAPI_ImpossibleContact = 3



