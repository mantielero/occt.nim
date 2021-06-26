{.push header: "TColgp_HSequenceOfDir.hxx".}


# Constructors and methods
proc constructor_TColgp_HSequenceOfDir*(): TColgp_HSequenceOfDir {.constructor,importcpp: "TColgp_HSequenceOfDir".}

proc constructor_TColgp_HSequenceOfDir*(theOther: TColgp_SequenceOfDir): TColgp_HSequenceOfDir {.constructor,importcpp: "TColgp_HSequenceOfDir(@)".}

proc ` new`*(this: var TColgp_HSequenceOfDir, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HSequenceOfDir, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HSequenceOfDir, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HSequenceOfDir, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HSequenceOfDir, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HSequenceOfDir, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc sequence*(this: TColgp_HSequenceOfDir): TColgp_SequenceOfDir  {.importcpp: "Sequence".}

proc append*(this: var TColgp_HSequenceOfDir, theItem: cint)  {.importcpp: "Append".}

proc append*(this: var TColgp_HSequenceOfDir, theSequence: var TColgp_SequenceOfDir)  {.importcpp: "Append".}

proc changeSequence*(this: var TColgp_HSequenceOfDir): TColgp_SequenceOfDir  {.importcpp: "ChangeSequence".}

proc get_type_name*(this: var TColgp_HSequenceOfDir): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HSequenceOfDir): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HSequenceOfDir): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HSequenceOfDir.hxx
