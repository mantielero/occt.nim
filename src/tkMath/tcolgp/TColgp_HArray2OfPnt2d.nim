{.push header: "TColgp_HArray2OfPnt2d.hxx".}


# Constructors and methods
proc constructor_TColgp_HArray2OfPnt2d*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer): TColgp_HArray2OfPnt2d {.constructor,importcpp: "TColgp_HArray2OfPnt2d(@)".}

proc constructor_TColgp_HArray2OfPnt2d*(theRowLow: Standard_Integer, theRowUpp: Standard_Integer, theColLow: Standard_Integer, theColUpp: Standard_Integer, theValue: cint): TColgp_HArray2OfPnt2d {.constructor,importcpp: "TColgp_HArray2OfPnt2d(@)".}

proc constructor_TColgp_HArray2OfPnt2d*(theOther: TColgp_Array2OfPnt2d): TColgp_HArray2OfPnt2d {.constructor,importcpp: "TColgp_HArray2OfPnt2d(@)".}

proc ` new`*(this: var TColgp_HArray2OfPnt2d, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt2d, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TColgp_HArray2OfPnt2d, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TColgp_HArray2OfPnt2d, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TColgp_HArray2OfPnt2d, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt2d, pointer, pointer)  {.importcpp: "#  delete #".}

proc ` new`*(this: var TColgp_HArray2OfPnt2d, theSize: cint, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  new #".}

proc ` delete`*(this: var TColgp_HArray2OfPnt2d, theAddress: pointer, theAllocator: Handle[NCollection_BaseAllocator])  {.importcpp: "#  delete #".}

proc array2*(this: TColgp_HArray2OfPnt2d): TColgp_Array2OfPnt2d  {.importcpp: "Array2".}

proc changeArray2*(this: var TColgp_HArray2OfPnt2d): TColgp_Array2OfPnt2d  {.importcpp: "ChangeArray2".}

proc get_type_name*(this: var TColgp_HArray2OfPnt2d): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TColgp_HArray2OfPnt2d): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TColgp_HArray2OfPnt2d): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TColgp_HArray2OfPnt2d.hxx