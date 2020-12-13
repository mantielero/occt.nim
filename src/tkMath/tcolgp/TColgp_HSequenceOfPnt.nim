{.push header: "TColgp_HSequenceOfPnt.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfPnt*(): TColgp_HSequenceOfPnt {.constructor,importcpp: "TColgp_HSequenceOfPnt".}

proc constructor_TColgp_HSequenceOfPnt*(theOther: TColgp_SequenceOfPnt): TColgp_HSequenceOfPnt {.constructor,importcpp: "TColgp_HSequenceOfPnt(@)".}

proc ` new`*(this: var TColgp_HSequenceOfPnt, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfPnt, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfPnt, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfPnt, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfPnt, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfPnt, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfPnt, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfPnt, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfPnt): TColgp_SequenceOfPnt  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfPnt, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfPnt, theSequence: var TColgp_SequenceOfPnt)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfPnt): TColgp_SequenceOfPnt  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfPnt): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfPnt): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfPnt): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfPnt.hxx
