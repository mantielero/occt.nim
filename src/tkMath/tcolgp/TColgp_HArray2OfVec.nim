{.push header: "TColgp_HArray2OfVec.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfVec*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfVec {.constructor,importcpp: "TColgp_HArray2OfVec(@)".}

proc constructor_TColgp_HArray2OfVec*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfVec {.constructor,importcpp: "TColgp_HArray2OfVec(@)".}

proc constructor_TColgp_HArray2OfVec*(theOther: TColgp_Array2OfVec): TColgp_HArray2OfVec {.constructor,importcpp: "TColgp_HArray2OfVec(@)".}

proc ` new`*(this: var TColgp_HArray2OfVec, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfVec, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfVec, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfVec, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfVec, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfVec, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfVec, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfVec, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfVec): TColgp_Array2OfVec  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfVec): TColgp_Array2OfVec  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfVec): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfVec): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfVec): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfVec.hxx
