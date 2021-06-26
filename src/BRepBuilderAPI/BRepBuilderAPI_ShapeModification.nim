import brepbuilderapi_types


type
  BRepBuilderAPI_ShapeModification* {.size:sizeof(cuint),header: "BRepBuilderAPI_ShapeModification.hxx", importcpp: "BRepBuilderAPI_ShapeModification", pure.} = enum
    ## Lists the possible types of modification to a shape following a
    ## topological operation: Preserved, Deleted, Trimmed, Merged or
    ## BoundaryModified. This enumeration enables you to assign a "state" to
    ## the different shapes that are on the list of operands for each API
    ## function. The MakeShape class then uses this to determine what has
    ## happened to the shapes which constitute the list of operands.

    BRepBuilderAPI_Preserved = 0,
    BRepBuilderAPI_Deleted = 1,
    BRepBuilderAPI_Trimmed = 2,
    BRepBuilderAPI_Merged = 3,
    BRepBuilderAPI_BoundaryModified = 4



