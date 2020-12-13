{.push header: "TColgp_HArray2OfPnt.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfPnt*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfPnt {.constructor,importcpp: "TColgp_HArray2OfPnt(@)".}

proc constructor_TColgp_HArray2OfPnt*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfPnt {.constructor,importcpp: "TColgp_HArray2OfPnt(@)".}

proc constructor_TColgp_HArray2OfPnt*(theOther: TColgp_Array2OfPnt): TColgp_HArray2OfPnt {.constructor,importcpp: "TColgp_HArray2OfPnt(@)".}

proc ` new`*(this: var TColgp_HArray2OfPnt, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfPnt, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfPnt, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfPnt, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfPnt, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfPnt): TColgp_Array2OfPnt  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfPnt): TColgp_Array2OfPnt  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfPnt): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfPnt): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfPnt): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfPnt.hxx
