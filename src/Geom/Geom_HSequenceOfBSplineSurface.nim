import geom_types


type
  Geom_HSequenceOfBSplineSurface* {.header: "Geom_HSequenceOfBSplineSurface.hxx", importcpp: "Geom_HSequenceOfBSplineSurface", byref.} = object #of class Standard_Transient

  Base_type* {.header: "Geom_HSequenceOfBSplineSurface.hxx", importcpp: "Geom_HSequenceOfBSplineSurface::base_type".} = Standard_Transient
  Handle_Geom_HSequenceOfBSplineSurface* {.header: "Geom_HSequenceOfBSplineSurface.hxx", importcpp: "Handle_Geom_HSequenceOfBSplineSurface".} = handle[Geom_HSequenceOfBSplineSurface]


{.push header: "Geom_HSequenceOfBSplineSurface.hxx".}

proc constructGeom_HSequenceOfBSplineSurface*(): Geom_HSequenceOfBSplineSurface {.constructor,importcpp: "Geom_HSequenceOfBSplineSurface::Geom_HSequenceOfBSplineSurface".}

proc constructGeom_HSequenceOfBSplineSurface*(theOther: Geom_SequenceOfBSplineSurface): Geom_HSequenceOfBSplineSurface {.constructor,importcpp: "Geom_HSequenceOfBSplineSurface::Geom_HSequenceOfBSplineSurface(@)".}

proc ` new`*(this: var Geom_HSequenceOfBSplineSurface, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_HSequenceOfBSplineSurface, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var Geom_HSequenceOfBSplineSurface, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var Geom_HSequenceOfBSplineSurface, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var Geom_HSequenceOfBSplineSurface, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_HSequenceOfBSplineSurface, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var Geom_HSequenceOfBSplineSurface, theSize: cint, theAllocator: handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var Geom_HSequenceOfBSplineSurface, theAddress: pointer, theAllocator: handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: Geom_HSequenceOfBSplineSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "Sequence".}

proc append*(this: var Geom_HSequenceOfBSplineSurface, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var Geom_HSequenceOfBSplineSurface, theSequence: var Geom_SequenceOfBSplineSurface)  {.importcpp: "Append".}

proc changeSequence*(this: var Geom_HSequenceOfBSplineSurface): Geom_SequenceOfBSplineSurface  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var Geom_HSequenceOfBSplineSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_HSequenceOfBSplineSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_HSequenceOfBSplineSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_HSequenceOfBSplineSurface.hxx"
