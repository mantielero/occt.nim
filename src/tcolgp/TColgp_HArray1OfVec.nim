{.push header: "TColgp_HArray1OfVec.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfVec*(): TColgp_HArray1OfVec {.constructor,importcpp: "TColgp_HArray1OfVec".}

proc constructor_TColgp_HArray1OfVec*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfVec {.constructor,importcpp: "TColgp_HArray1OfVec(@)".}

proc constructor_TColgp_HArray1OfVec*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfVec {.constructor,importcpp: "TColgp_HArray1OfVec(@)".}

proc constructor_TColgp_HArray1OfVec*(theOther: TColgp_Array1OfVec): TColgp_HArray1OfVec {.constructor,importcpp: "TColgp_HArray1OfVec(@)".}

proc ` new`*(this: var TColgp_HArray1OfVec, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfVec, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfVec, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfVec, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfVec, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfVec, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfVec, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfVec, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfVec): TColgp_Array1OfVec  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfVec): TColgp_Array1OfVec  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfVec): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfVec): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfVec): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfVec.hxx
