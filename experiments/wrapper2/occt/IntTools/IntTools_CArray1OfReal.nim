##  Created on: 2000-05-18
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _IntTools_CArray1OfReal_HeaderFile [NewLine] # _IntTools_CArray1OfReal_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
type
  IntTools_CArray1OfReal* {.importcpp: "IntTools_CArray1OfReal",
                           header: "IntTools_CArray1OfReal.hxx", bycopy.} = object ## !
                                                                              ## Creates an
                                                                              ## array  of
                                                                              ## given
                                                                              ## Length.
                                                                              ## !
                                                                              ## Prohibits
                                                                              ## the
                                                                              ## creator by
                                                                              ## copy


proc constructIntTools_CArray1OfReal*(Length: Standard_Integer = 0): IntTools_CArray1OfReal {.
    constructor, importcpp: "IntTools_CArray1OfReal(@)",
    header: "IntTools_CArray1OfReal.hxx".}
proc constructIntTools_CArray1OfReal*(Item: Standard_Real; Length: Standard_Integer): IntTools_CArray1OfReal {.
    constructor, importcpp: "IntTools_CArray1OfReal(@)",
    header: "IntTools_CArray1OfReal.hxx".}
proc Init*(this: var IntTools_CArray1OfReal; V: Standard_Real) {.importcpp: "Init",
    header: "IntTools_CArray1OfReal.hxx".}
proc Resize*(this: var IntTools_CArray1OfReal; theNewLength: Standard_Integer) {.
    importcpp: "Resize", header: "IntTools_CArray1OfReal.hxx".}
proc Destroy*(this: var IntTools_CArray1OfReal) {.importcpp: "Destroy",
    header: "IntTools_CArray1OfReal.hxx".}
proc destroyIntTools_CArray1OfReal*(this: var IntTools_CArray1OfReal) {.
    importcpp: "#.~IntTools_CArray1OfReal()", header: "IntTools_CArray1OfReal.hxx".}
proc Length*(this: IntTools_CArray1OfReal): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "IntTools_CArray1OfReal.hxx".}
proc Append*(this: var IntTools_CArray1OfReal; Value: Standard_Real) {.
    importcpp: "Append", header: "IntTools_CArray1OfReal.hxx".}
proc SetValue*(this: var IntTools_CArray1OfReal; Index: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue",
                                    header: "IntTools_CArray1OfReal.hxx".}
proc Value*(this: IntTools_CArray1OfReal; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "IntTools_CArray1OfReal.hxx".}
proc `()`*(this: IntTools_CArray1OfReal; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "IntTools_CArray1OfReal.hxx".}
proc ChangeValue*(this: var IntTools_CArray1OfReal; Index: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeValue", header: "IntTools_CArray1OfReal.hxx".}
proc `()`*(this: var IntTools_CArray1OfReal; Index: Standard_Integer): var Standard_Real {.
    importcpp: "#(@)", header: "IntTools_CArray1OfReal.hxx".}
proc IsEqual*(this: IntTools_CArray1OfReal; Other: IntTools_CArray1OfReal): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_CArray1OfReal.hxx".}
proc `==`*(this: IntTools_CArray1OfReal; Other: IntTools_CArray1OfReal): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "IntTools_CArray1OfReal.hxx".}
## !!!Ignored construct:  # Array1Item Standard_Real [NewLine] # Array1Item_hxx < Standard_Real . hxx > [NewLine] # IntTools_CArray1 IntTools_CArray1OfReal [NewLine] # IntTools_CArray1_hxx < IntTools_CArray1OfReal . hxx > [NewLine] # < IntTools_CArray1 . lxx > [NewLine] # Array1Item [NewLine] # Array1Item_hxx [NewLine] # IntTools_CArray1 [NewLine] # IntTools_CArray1_hxx [NewLine] #  _IntTools_CArray1OfReal_HeaderFile [NewLine]
## Error: did not expect <!!!
