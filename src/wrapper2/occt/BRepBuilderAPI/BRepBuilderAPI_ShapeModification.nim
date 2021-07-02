type
  BRepBuilderAPI_ShapeModification* {.size: sizeof(cint), importcpp: "BRepBuilderAPI_ShapeModification", header: "BRepBuilderAPI_ShapeModification.hxx".} = enum
    BRepBuilderAPI_Preserved, BRepBuilderAPI_Deleted, BRepBuilderAPI_Trimmed,
    BRepBuilderAPI_Merged, BRepBuilderAPI_BoundaryModified

