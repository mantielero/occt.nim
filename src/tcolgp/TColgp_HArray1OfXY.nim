{.push header: "TColgp_HArray1OfXY.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray1OfXY*(): TColgp_HArray1OfXY {.constructor,importcpp: "TColgp_HArray1OfXY".}

proc constructor_TColgp_HArray1OfXY*(theLower: Standard_Integer, theUpper: Standard_Integer): TColgp_HArray1OfXY {.constructor,importcpp: "TColgp_HArray1OfXY(@)".}

proc constructor_TColgp_HArray1OfXY*(theLower: Standard_Integer, theUpper: Standard_Integer, theValue: cint): TColgp_HArray1OfXY {.constructor,importcpp: "TColgp_HArray1OfXY(@)".}

proc constructor_TColgp_HArray1OfXY*(theOther: TColgp_Array1OfXY): TColgp_HArray1OfXY {.constructor,importcpp: "TColgp_HArray1OfXY(@)".}

proc ` new`*(this: var TColgp_HArray1OfXY, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXY, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray1OfXY, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray1OfXY, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray1OfXY, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXY, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray1OfXY, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray1OfXY, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array1*(this: TColgp_HArray1OfXY): TColgp_Array1OfXY  {.importcpp: "Array1".}

proc changeArray1*(this: var TColgp_HArray1OfXY): TColgp_Array1OfXY  {.importcpp: "ChangeArray1".}

proc get_type_name*(this: var TColgp_HArray1OfXY): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray1OfXY): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray1OfXY): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray1OfXY.hxx
