{.push header: "TColgp_HArray1OfDir.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfDir*(): TColgp_HArray1OfDir {.constructor,importcpp: "TColgp_HArray1OfDir".}

proc constructor_TColgp_HArray1OfDir*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfDir {.constructor,importcpp: "TColgp_HArray1OfDir(@)".}

proc constructor_TColgp_HArray1OfDir*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfDir {.constructor,importcpp: "TColgp_HArray1OfDir(@)".}

proc constructor_TColgp_HArray1OfDir*(theOther: TColgp_Array1OfDir): TColgp_HArray1OfDir {.constructor,importcpp: "TColgp_HArray1OfDir(@)".}

proc ` new`*(this: var TColgp_HArray1OfDir, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfDir, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfDir, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfDir, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfDir, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfDir): TColgp_Array1OfDir  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfDir): TColgp_Array1OfDir  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfDir): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfDir): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfDir): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfDir.hxx
