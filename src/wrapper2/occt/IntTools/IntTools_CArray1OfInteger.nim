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

## !!!Ignored construct:  # _IntTools_CArray1OfInteger_HeaderFile [NewLine] # _IntTools_CArray1OfInteger_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
type
  IntTools_CArray1OfInteger* {.importcpp: "IntTools_CArray1OfInteger",
                              header: "IntTools_CArray1OfInteger.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## an
                                                                                    ## array
                                                                                    ## of
                                                                                    ## given
                                                                                    ## Length.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Prohibits
                                                                                    ## the
                                                                                    ## creator
                                                                                    ## by
                                                                                    ## copy


proc constructIntTools_CArray1OfInteger*(Length: Standard_Integer = 0): IntTools_CArray1OfInteger {.
    constructor, importcpp: "IntTools_CArray1OfInteger(@)",
    header: "IntTools_CArray1OfInteger.hxx".}
proc constructIntTools_CArray1OfInteger*(Item: Standard_Integer;
                                        Length: Standard_Integer): IntTools_CArray1OfInteger {.
    constructor, importcpp: "IntTools_CArray1OfInteger(@)",
    header: "IntTools_CArray1OfInteger.hxx".}
proc Init*(this: var IntTools_CArray1OfInteger; V: Standard_Integer) {.
    importcpp: "Init", header: "IntTools_CArray1OfInteger.hxx".}
proc Resize*(this: var IntTools_CArray1OfInteger; theNewLength: Standard_Integer) {.
    importcpp: "Resize", header: "IntTools_CArray1OfInteger.hxx".}
proc Destroy*(this: var IntTools_CArray1OfInteger) {.importcpp: "Destroy",
    header: "IntTools_CArray1OfInteger.hxx".}
proc destroyIntTools_CArray1OfInteger*(this: var IntTools_CArray1OfInteger) {.
    importcpp: "#.~IntTools_CArray1OfInteger()",
    header: "IntTools_CArray1OfInteger.hxx".}
proc Length*(this: IntTools_CArray1OfInteger): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "IntTools_CArray1OfInteger.hxx".}
proc Append*(this: var IntTools_CArray1OfInteger; Value: Standard_Integer) {.
    importcpp: "Append", header: "IntTools_CArray1OfInteger.hxx".}
proc SetValue*(this: var IntTools_CArray1OfInteger; Index: Standard_Integer;
              Value: Standard_Integer) {.importcpp: "SetValue",
                                       header: "IntTools_CArray1OfInteger.hxx".}
proc Value*(this: IntTools_CArray1OfInteger; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "IntTools_CArray1OfInteger.hxx".}
proc `()`*(this: IntTools_CArray1OfInteger; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "#(@)", header: "IntTools_CArray1OfInteger.hxx".}
proc ChangeValue*(this: var IntTools_CArray1OfInteger; Index: Standard_Integer): var Standard_Integer {.
    importcpp: "ChangeValue", header: "IntTools_CArray1OfInteger.hxx".}
proc `()`*(this: var IntTools_CArray1OfInteger; Index: Standard_Integer): var Standard_Integer {.
    importcpp: "#(@)", header: "IntTools_CArray1OfInteger.hxx".}
proc IsEqual*(this: IntTools_CArray1OfInteger; Other: IntTools_CArray1OfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_CArray1OfInteger.hxx".}
proc `==`*(this: IntTools_CArray1OfInteger; Other: IntTools_CArray1OfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "IntTools_CArray1OfInteger.hxx".}
## !!!Ignored construct:  # Array1Item Standard_Integer [NewLine] # Array1Item_hxx < Standard_Integer . hxx > [NewLine] # IntTools_CArray1 IntTools_CArray1OfInteger [NewLine] # IntTools_CArray1_hxx < IntTools_CArray1OfInteger . hxx > [NewLine] # < IntTools_CArray1 . lxx > [NewLine] # Array1Item [NewLine] # Array1Item_hxx [NewLine] # IntTools_CArray1 [NewLine] # IntTools_CArray1_hxx [NewLine] #  _IntTools_CArray1OfInteger_HeaderFile [NewLine]
## Error: did not expect <!!!
