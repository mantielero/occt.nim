type
  BRepLibShapeModification* {.size: sizeof(cint),
                             importcpp: "BRepLib_ShapeModification",
                             header: "BRepLib_ShapeModification.hxx".} = enum
    BRepLibPreserved, BRepLibDeleted, BRepLibTrimmed, BRepLibMerged,
    BRepLibBoundaryModified

