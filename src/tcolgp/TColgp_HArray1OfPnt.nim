{.push header: "TColgp_HArray1OfPnt.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfPnt*(): TColgp_HArray1OfPnt {.constructor,importcpp: "TColgp_HArray1OfPnt".}

proc constructor_TColgp_HArray1OfPnt*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfPnt {.constructor,importcpp: "TColgp_HArray1OfPnt(@)".}

proc constructor_TColgp_HArray1OfPnt*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfPnt {.constructor,importcpp: "TColgp_HArray1OfPnt(@)".}

proc constructor_TColgp_HArray1OfPnt*(theOther: TColgp_Array1OfPnt): TColgp_HArray1OfPnt {.constructor,importcpp: "TColgp_HArray1OfPnt(@)".}

proc ` new`*(this: var TColgp_HArray1OfPnt, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfPnt, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfPnt, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfPnt, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfPnt, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfPnt, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfPnt, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfPnt, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfPnt): TColgp_Array1OfPnt  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfPnt): TColgp_Array1OfPnt  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfPnt): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfPnt): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfPnt): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfPnt.hxx
