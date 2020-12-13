{.push header: "TopoDS_TShape.hxx".}


# Constructors and methods
proc constructor_TopoDS_TShape*(): TopoDS_TShape {.constructor,importcpp: "TopoDS_TShape".}
  ## Constructs an empty TShape. Free : True Modified : True Checked :
  ## False Orientable : True Closed : False Infinite : False Convex : False

proc free*(this: TopoDS_TShape): bool  {.importcpp: "Free".}
  ## Returns the free flag.

proc free*(this: var TopoDS_TShape, theIsFree: bool)  {.importcpp: "Free".}
  ## Sets the free flag.

proc locked*(this: TopoDS_TShape): bool  {.importcpp: "Locked".}
  ## Returns the locked flag.

proc locked*(this: var TopoDS_TShape, theIsLocked: bool)  {.importcpp: "Locked".}
  ## Sets the locked flag.

proc modified*(this: TopoDS_TShape): bool  {.importcpp: "Modified".}
  ## Returns the modification flag.

proc modified*(this: var TopoDS_TShape, theIsModified: bool)  {.importcpp: "Modified".}
  ## Sets the modification flag.

proc checked*(this: TopoDS_TShape): bool  {.importcpp: "Checked".}
  ## Returns the checked flag.

proc checked*(this: var TopoDS_TShape, theIsChecked: bool)  {.importcpp: "Checked".}
  ## Sets the checked flag.

proc orientable*(this: TopoDS_TShape): bool  {.importcpp: "Orientable".}
  ## Returns the orientability flag.

proc orientable*(this: var TopoDS_TShape, theIsOrientable: bool)  {.importcpp: "Orientable".}
  ## Sets the orientability flag.

proc closed*(this: TopoDS_TShape): bool  {.importcpp: "Closed".}
  ## Returns the closedness flag.

proc closed*(this: var TopoDS_TShape, theIsClosed: bool)  {.importcpp: "Closed".}
  ## Sets the closedness flag.

proc infinite*(this: TopoDS_TShape): bool  {.importcpp: "Infinite".}
  ## Returns the infinity flag.

proc infinite*(this: var TopoDS_TShape, theIsInfinite: bool)  {.importcpp: "Infinite".}
  ## Sets the infinity flag.

proc convex*(this: TopoDS_TShape): bool  {.importcpp: "Convex".}
  ## Returns the convexness flag.

proc convex*(this: var TopoDS_TShape, theIsConvex: bool)  {.importcpp: "Convex".}
  ## Sets the convexness flag.

proc shapeType*(this: TopoDS_TShape): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns the type as a term of the ShapeEnum enum : VERTEX, EDGE, WIRE,
  ## FACE, ....

proc emptyCopy*(this: TopoDS_TShape): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns a copy of the TShape with no sub-shapes.

proc nbChildren*(this: TopoDS_TShape): cint  {.importcpp: "NbChildren".}
  ## Returns the number of direct sub-shapes (children).

proc dumpJson*(this: TopoDS_TShape, theOStream: var Standard_OStream, theDepth: cint)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream

proc get_type_name*(this: var TopoDS_TShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TShape): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TShape): Handle[Standard_Type]  {.importcpp: "DynamicType".}

proc setFlag*(this: var TopoDS_TShape, theFlag: Topods_tshape_flags[], theIsOn: bool)  {.importcpp: "setFlag".}
  ## Set bit flag.

{.pop.} # header: "TopoDS_TShape.hxx
