import topods_types


type
  TopoDS_TShape_Flags* {.size:sizeof(cuint),header: "TopoDS_TShape.hxx", importcpp: "TopoDS_TShape::TopoDS_TShape_Flags", pure.} = enum
    TopoDS_TShape_Flags_Free = 1,
    TopoDS_TShape_Flags_Modified = 2,
    TopoDS_TShape_Flags_Checked = 4,
    TopoDS_TShape_Flags_Orientable = 8,
    TopoDS_TShape_Flags_Closed = 16,
    TopoDS_TShape_Flags_Infinite = 32,
    TopoDS_TShape_Flags_Convex = 64,
    TopoDS_TShape_Flags_Locked = 128

  Base_type* {.header: "TopoDS_TShape.hxx", importcpp: "TopoDS_TShape::base_type".} = Standard_Transient
  Handle_TopoDS_TShape* {.header: "TopoDS_TShape.hxx", importcpp: "Handle_TopoDS_TShape".} = handle[TopoDS_TShape]


{.push header: "TopoDS_TShape.hxx".}

proc constructTopoDS_TShape*(): TopoDS_TShape {.constructor,importcpp: "TopoDS_TShape::TopoDS_TShape".}
    ## Constructs an empty TShape. Free : True Modified : True Checked :
    ## False Orientable : True Closed : False Infinite : False Convex : False

proc free*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Free".}
    ## Returns the free flag.

proc free*(this: var TopoDS_TShape, theIsFree: Standard_Boolean)  {.importcpp: "Free".}
    ## Sets the free flag.

proc locked*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Locked".}
    ## Returns the locked flag.

proc locked*(this: var TopoDS_TShape, theIsLocked: Standard_Boolean)  {.importcpp: "Locked".}
    ## Sets the locked flag.

proc modified*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Modified".}
    ## Returns the modification flag.

proc modified*(this: var TopoDS_TShape, theIsModified: Standard_Boolean)  {.importcpp: "Modified".}
    ## Sets the modification flag.

proc checked*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Checked".}
    ## Returns the checked flag.

proc checked*(this: var TopoDS_TShape, theIsChecked: Standard_Boolean)  {.importcpp: "Checked".}
    ## Sets the checked flag.

proc orientable*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Orientable".}
    ## Returns the orientability flag.

proc orientable*(this: var TopoDS_TShape, theIsOrientable: Standard_Boolean)  {.importcpp: "Orientable".}
    ## Sets the orientability flag.

proc closed*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Closed".}
    ## Returns the closedness flag.

proc closed*(this: var TopoDS_TShape, theIsClosed: Standard_Boolean)  {.importcpp: "Closed".}
    ## Sets the closedness flag.

proc infinite*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Infinite".}
    ## Returns the infinity flag.

proc infinite*(this: var TopoDS_TShape, theIsInfinite: Standard_Boolean)  {.importcpp: "Infinite".}
    ## Sets the infinity flag.

proc convex*(this: TopoDS_TShape): Standard_Boolean  {.importcpp: "Convex".}
    ## Returns the convexness flag.

proc convex*(this: var TopoDS_TShape, theIsConvex: Standard_Boolean)  {.importcpp: "Convex".}
    ## Sets the convexness flag.

proc shapeType*(this: TopoDS_TShape): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns the type as a term of the ShapeEnum enum : VERTEX, EDGE, WIRE,
    ## FACE, ....

proc emptyCopy*(this: TopoDS_TShape): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns a copy of the TShape with no sub-shapes.

proc nbChildren*(this: TopoDS_TShape): Standard_Integer  {.importcpp: "NbChildren".}
    ## Returns the number of direct sub-shapes (children).

proc dumpJson*(this: TopoDS_TShape, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var TopoDS_TShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TShape): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TShape): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc setFlag*(this: var TopoDS_TShape, theFlag: TopoDS_TShape_Flags, theIsOn: Standard_Boolean)  {.importcpp: "setFlag".}
    ## Set bit flag.

{.pop.}  # header: "TopoDS_TShape.hxx"
