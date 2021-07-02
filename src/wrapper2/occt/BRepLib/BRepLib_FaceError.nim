type
  BRepLibFaceError* {.size: sizeof(cint), importcpp: "BRepLib_FaceError",
                     header: "BRepLib_FaceError.hxx".} = enum
    BRepLibFaceDone, BRepLibNoFace, BRepLibNotPlanar, BRepLibCurveProjectionFailed,
    BRepLibParametersOutOfRange

