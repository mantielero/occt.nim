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

## !!!Ignored construct:  # _IntTools_CArray1OfInteger_HeaderFile [NewLine] # _IntTools_CArray1OfInteger_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
type
  IntToolsCArray1OfInteger* {.importcpp: "IntTools_CArray1OfInteger",
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


proc constructIntToolsCArray1OfInteger*(length: int = 0): IntToolsCArray1OfInteger {.
    constructor, importcpp: "IntTools_CArray1OfInteger(@)",
    header: "IntTools_CArray1OfInteger.hxx".}
proc constructIntToolsCArray1OfInteger*(item: int; length: int): IntToolsCArray1OfInteger {.
    constructor, importcpp: "IntTools_CArray1OfInteger(@)",
    header: "IntTools_CArray1OfInteger.hxx".}
proc init*(this: var IntToolsCArray1OfInteger; v: int) {.importcpp: "Init",
    header: "IntTools_CArray1OfInteger.hxx".}
proc resize*(this: var IntToolsCArray1OfInteger; theNewLength: int) {.
    importcpp: "Resize", header: "IntTools_CArray1OfInteger.hxx".}
proc destroy*(this: var IntToolsCArray1OfInteger) {.importcpp: "Destroy",
    header: "IntTools_CArray1OfInteger.hxx".}
proc destroyIntToolsCArray1OfInteger*(this: var IntToolsCArray1OfInteger) {.
    importcpp: "#.~IntTools_CArray1OfInteger()",
    header: "IntTools_CArray1OfInteger.hxx".}
proc length*(this: IntToolsCArray1OfInteger): int {.noSideEffect,
    importcpp: "Length", header: "IntTools_CArray1OfInteger.hxx".}
proc append*(this: var IntToolsCArray1OfInteger; value: int) {.importcpp: "Append",
    header: "IntTools_CArray1OfInteger.hxx".}
proc setValue*(this: var IntToolsCArray1OfInteger; index: int; value: int) {.
    importcpp: "SetValue", header: "IntTools_CArray1OfInteger.hxx".}
proc value*(this: IntToolsCArray1OfInteger; index: int): int {.noSideEffect,
    importcpp: "Value", header: "IntTools_CArray1OfInteger.hxx".}
proc `()`*(this: IntToolsCArray1OfInteger; index: int): int {.noSideEffect,
    importcpp: "#(@)", header: "IntTools_CArray1OfInteger.hxx".}
proc changeValue*(this: var IntToolsCArray1OfInteger; index: int): var int {.
    importcpp: "ChangeValue", header: "IntTools_CArray1OfInteger.hxx".}
proc `()`*(this: var IntToolsCArray1OfInteger; index: int): var int {.importcpp: "#(@)",
    header: "IntTools_CArray1OfInteger.hxx".}
proc isEqual*(this: IntToolsCArray1OfInteger; other: IntToolsCArray1OfInteger): bool {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_CArray1OfInteger.hxx".}
proc `==`*(this: IntToolsCArray1OfInteger; other: IntToolsCArray1OfInteger): bool {.
    noSideEffect, importcpp: "(# == #)", header: "IntTools_CArray1OfInteger.hxx".}
## !!!Ignored construct:  # Array1Item Standard_Integer [NewLine] # Array1Item_hxx < Standard_Integer . hxx > [NewLine] # IntTools_CArray1 IntTools_CArray1OfInteger [NewLine] # IntTools_CArray1_hxx < IntTools_CArray1OfInteger . hxx > [NewLine] # < IntTools_CArray1 . lxx > [NewLine] # Array1Item [NewLine] # Array1Item_hxx [NewLine] # IntTools_CArray1 [NewLine] # IntTools_CArray1_hxx [NewLine] #  _IntTools_CArray1OfInteger_HeaderFile
## Error: did not expect <!!!

