{.push header: "TColgp_HSequenceOfDir2d.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfDir2d*(): TColgp_HSequenceOfDir2d {.constructor,importcpp: "TColgp_HSequenceOfDir2d".}

proc constructor_TColgp_HSequenceOfDir2d*(theOther: TColgp_SequenceOfDir2d): TColgp_HSequenceOfDir2d {.constructor,importcpp: "TColgp_HSequenceOfDir2d(@)".}

proc ` new`*(this: var TColgp_HSequenceOfDir2d, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir2d, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfDir2d, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfDir2d, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfDir2d, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir2d, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfDir2d, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir2d, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfDir2d): TColgp_SequenceOfDir2d  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfDir2d, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfDir2d, theSequence: var TColgp_SequenceOfDir2d)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfDir2d): TColgp_SequenceOfDir2d  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfDir2d): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfDir2d): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfDir2d): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfDir2d.hxx
