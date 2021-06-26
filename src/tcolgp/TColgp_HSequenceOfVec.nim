{.push header: "TColgp_HSequenceOfVec.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfVec*(): TColgp_HSequenceOfVec {.constructor,importcpp: "TColgp_HSequenceOfVec".}

proc constructor_TColgp_HSequenceOfVec*(theOther: TColgp_SequenceOfVec): TColgp_HSequenceOfVec {.constructor,importcpp: "TColgp_HSequenceOfVec(@)".}

proc ` new`*(this: var TColgp_HSequenceOfVec, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfVec, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfVec, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfVec, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfVec, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfVec, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfVec, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfVec, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfVec): TColgp_SequenceOfVec  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfVec, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfVec, theSequence: var TColgp_SequenceOfVec)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfVec): TColgp_SequenceOfVec  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfVec): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfVec): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfVec): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfVec.hxx
