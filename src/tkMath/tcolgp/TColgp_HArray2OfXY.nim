{.push header: "TColgp_HArray2OfXY.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfXY*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfXY {.constructor,importcpp: "TColgp_HArray2OfXY(@)".}

proc constructor_TColgp_HArray2OfXY*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfXY {.constructor,importcpp: "TColgp_HArray2OfXY(@)".}

proc constructor_TColgp_HArray2OfXY*(theOther: TColgp_Array2OfXY): TColgp_HArray2OfXY {.constructor,importcpp: "TColgp_HArray2OfXY(@)".}

proc ` new`*(this: var TColgp_HArray2OfXY, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXY, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfXY, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfXY, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfXY, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXY, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfXY, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXY, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfXY): TColgp_Array2OfXY  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfXY): TColgp_Array2OfXY  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfXY): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfXY): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfXY): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfXY.hxx
