{.push header: "TColgp_HArray2OfDir.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfDir*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfDir {.constructor,importcpp: "TColgp_HArray2OfDir(@)".}

proc constructor_TColgp_HArray2OfDir*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfDir {.constructor,importcpp: "TColgp_HArray2OfDir(@)".}

proc constructor_TColgp_HArray2OfDir*(theOther: TColgp_Array2OfDir): TColgp_HArray2OfDir {.constructor,importcpp: "TColgp_HArray2OfDir(@)".}

proc ` new`*(this: var TColgp_HArray2OfDir, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfDir, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfDir, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfDir, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfDir, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfDir, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfDir, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfDir, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfDir): TColgp_Array2OfDir  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfDir): TColgp_Array2OfDir  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfDir): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfDir): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfDir): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfDir.hxx
