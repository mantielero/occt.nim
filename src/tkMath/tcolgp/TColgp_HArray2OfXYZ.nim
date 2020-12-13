{.push header: "TColgp_HArray2OfXYZ.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfXYZ*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfXYZ {.constructor,importcpp: "TColgp_HArray2OfXYZ(@)".}

proc constructor_TColgp_HArray2OfXYZ*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfXYZ {.constructor,importcpp: "TColgp_HArray2OfXYZ(@)".}

proc constructor_TColgp_HArray2OfXYZ*(theOther: TColgp_Array2OfXYZ): TColgp_HArray2OfXYZ {.constructor,importcpp: "TColgp_HArray2OfXYZ(@)".}

proc ` new`*(this: var TColgp_HArray2OfXYZ, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXYZ, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfXYZ, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfXYZ, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfXYZ, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXYZ, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfXYZ, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfXYZ, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfXYZ): TColgp_Array2OfXYZ  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfXYZ): TColgp_Array2OfXYZ  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfXYZ): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfXYZ): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfXYZ): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfXYZ.hxx
