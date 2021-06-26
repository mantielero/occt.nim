{.push header: "TColgp_HSequenceOfXYZ.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfXYZ*(): TColgp_HSequenceOfXYZ {.constructor,importcpp: "TColgp_HSequenceOfXYZ".}

proc constructor_TColgp_HSequenceOfXYZ*(theOther: TColgp_SequenceOfXYZ): TColgp_HSequenceOfXYZ {.constructor,importcpp: "TColgp_HSequenceOfXYZ(@)".}

proc ` new`*(this: var TColgp_HSequenceOfXYZ, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXYZ, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfXYZ, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfXYZ, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfXYZ, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXYZ, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfXYZ, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfXYZ, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfXYZ): TColgp_SequenceOfXYZ  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfXYZ, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfXYZ, theSequence: var TColgp_SequenceOfXYZ)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfXYZ): TColgp_SequenceOfXYZ  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfXYZ): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfXYZ): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfXYZ): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfXYZ.hxx
