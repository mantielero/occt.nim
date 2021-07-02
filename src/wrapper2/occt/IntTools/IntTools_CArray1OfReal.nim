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

## !!!Ignored construct:  # _IntTools_CArray1OfReal_HeaderFile [NewLine] # _IntTools_CArray1OfReal_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfMemory"
type
  IntToolsCArray1OfReal* {.importcpp: "IntTools_CArray1OfReal",
                          header: "IntTools_CArray1OfReal.hxx", bycopy.} = object ## !
                                                                             ## Creates an
                                                                             ## array  of
                                                                             ## given
                                                                             ## Length.
                                                                             ## !
                                                                             ## Prohibits the
                                                                             ## creator by
                                                                             ## copy


proc constructIntToolsCArray1OfReal*(length: StandardInteger = 0): IntToolsCArray1OfReal {.
    constructor, importcpp: "IntTools_CArray1OfReal(@)",
    header: "IntTools_CArray1OfReal.hxx".}
proc constructIntToolsCArray1OfReal*(item: StandardReal; length: StandardInteger): IntToolsCArray1OfReal {.
    constructor, importcpp: "IntTools_CArray1OfReal(@)",
    header: "IntTools_CArray1OfReal.hxx".}
proc init*(this: var IntToolsCArray1OfReal; v: StandardReal) {.importcpp: "Init",
    header: "IntTools_CArray1OfReal.hxx".}
proc resize*(this: var IntToolsCArray1OfReal; theNewLength: StandardInteger) {.
    importcpp: "Resize", header: "IntTools_CArray1OfReal.hxx".}
proc destroy*(this: var IntToolsCArray1OfReal) {.importcpp: "Destroy",
    header: "IntTools_CArray1OfReal.hxx".}
proc destroyIntToolsCArray1OfReal*(this: var IntToolsCArray1OfReal) {.
    importcpp: "#.~IntTools_CArray1OfReal()", header: "IntTools_CArray1OfReal.hxx".}
proc length*(this: IntToolsCArray1OfReal): StandardInteger {.noSideEffect,
    importcpp: "Length", header: "IntTools_CArray1OfReal.hxx".}
proc append*(this: var IntToolsCArray1OfReal; value: StandardReal) {.
    importcpp: "Append", header: "IntTools_CArray1OfReal.hxx".}
proc setValue*(this: var IntToolsCArray1OfReal; index: StandardInteger;
              value: StandardReal) {.importcpp: "SetValue",
                                   header: "IntTools_CArray1OfReal.hxx".}
proc value*(this: IntToolsCArray1OfReal; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: "IntTools_CArray1OfReal.hxx".}
proc `()`*(this: IntToolsCArray1OfReal; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "#(@)", header: "IntTools_CArray1OfReal.hxx".}
proc changeValue*(this: var IntToolsCArray1OfReal; index: StandardInteger): var StandardReal {.
    importcpp: "ChangeValue", header: "IntTools_CArray1OfReal.hxx".}
proc `()`*(this: var IntToolsCArray1OfReal; index: StandardInteger): var StandardReal {.
    importcpp: "#(@)", header: "IntTools_CArray1OfReal.hxx".}
proc isEqual*(this: IntToolsCArray1OfReal; other: IntToolsCArray1OfReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_CArray1OfReal.hxx".}
proc `==`*(this: IntToolsCArray1OfReal; other: IntToolsCArray1OfReal): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "IntTools_CArray1OfReal.hxx".}
## !!!Ignored construct:  # Array1Item Standard_Real [NewLine] # Array1Item_hxx < Standard_Real . hxx > [NewLine] # IntTools_CArray1 IntTools_CArray1OfReal [NewLine] # IntTools_CArray1_hxx < IntTools_CArray1OfReal . hxx > [NewLine] # < IntTools_CArray1 . lxx > [NewLine] # Array1Item [NewLine] # Array1Item_hxx [NewLine] # IntTools_CArray1 [NewLine] # IntTools_CArray1_hxx [NewLine] #  _IntTools_CArray1OfReal_HeaderFile
## Error: did not expect <!!!


