type
  BRepBuilderAPI_FaceError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_FaceError",
                             header: "BRepBuilderAPI_FaceError.hxx".} = enum
    BRepBuilderAPI_FaceDone, BRepBuilderAPI_NoFace, BRepBuilderAPI_NotPlanar,
    BRepBuilderAPI_CurveProjectionFailed, BRepBuilderAPI_ParametersOutOfRange

