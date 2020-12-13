{.push header: "TColgp_HSequenceOfXY.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfXY*(): TColgp_HSequenceOfXY {.constructor,importcpp: "TColgp_HSequenceOfXY".}

proc constructor_TColgp_HSequenceOfXY*(theOther: TColgp_SequenceOfXY): TColgp_HSequenceOfXY {.constructor,importcpp: "TColgp_HSequenceOfXY(@)".}

proc ` new`*(this: var TColgp_HSequenceOfXY, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXY, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfXY, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfXY, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfXY, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXY, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfXY, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXY, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfXY): TColgp_SequenceOfXY  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfXY, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfXY, theSequence: var TColgp_SequenceOfXY)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfXY): TColgp_SequenceOfXY  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfXY): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfXY): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfXY): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfXY.hxx
