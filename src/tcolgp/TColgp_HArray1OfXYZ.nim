{.push header: "TColgp_HArray1OfXYZ.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfXYZ*(): TColgp_HArray1OfXYZ {.constructor,importcpp: "TColgp_HArray1OfXYZ".}

proc constructor_TColgp_HArray1OfXYZ*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfXYZ {.constructor,importcpp: "TColgp_HArray1OfXYZ(@)".}

proc constructor_TColgp_HArray1OfXYZ*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfXYZ {.constructor,importcpp: "TColgp_HArray1OfXYZ(@)".}

proc constructor_TColgp_HArray1OfXYZ*(theOther: TColgp_Array1OfXYZ): TColgp_HArray1OfXYZ {.constructor,importcpp: "TColgp_HArray1OfXYZ(@)".}

proc ` new`*(this: var TColgp_HArray1OfXYZ, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXYZ, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfXYZ, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfXYZ, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfXYZ, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXYZ, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfXYZ, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXYZ, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfXYZ): TColgp_Array1OfXYZ  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfXYZ): TColgp_Array1OfXYZ  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfXYZ): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfXYZ): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfXYZ): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfXYZ.hxx
