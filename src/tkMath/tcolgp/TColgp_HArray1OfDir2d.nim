{.push header: "TColgp_HArray1OfDir2d.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfDir2d*(): TColgp_HArray1OfDir2d {.constructor,importcpp: "TColgp_HArray1OfDir2d".}

proc constructor_TColgp_HArray1OfDir2d*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfDir2d {.constructor,importcpp: "TColgp_HArray1OfDir2d(@)".}

proc constructor_TColgp_HArray1OfDir2d*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfDir2d {.constructor,importcpp: "TColgp_HArray1OfDir2d(@)".}

proc constructor_TColgp_HArray1OfDir2d*(theOther: TColgp_Array1OfDir2d): TColgp_HArray1OfDir2d {.constructor,importcpp: "TColgp_HArray1OfDir2d(@)".}

proc ` new`*(this: var TColgp_HArray1OfDir2d, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir2d, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfDir2d, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfDir2d, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfDir2d, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir2d, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfDir2d, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfDir2d, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfDir2d): TColgp_Array1OfDir2d  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfDir2d): TColgp_Array1OfDir2d  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfDir2d): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfDir2d): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfDir2d): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfDir2d.hxx
