##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_BooleanArray"
discard "forward decl of TDataStd_BooleanArray"
type
  HandleC1C1* = Handle[TDataStdBooleanArray]

## ! An array of boolean values.

type
  TDataStdBooleanArray* {.importcpp: "TDataStd_BooleanArray",
                         header: "TDataStd_BooleanArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                          ## !
                                                                                          ## Static
                                                                                          ## methods
                                                                                          ##
                                                                                          ## !
                                                                                          ## ==============
                                                                                          ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## an
                                                                                          ## ID
                                                                                          ## for
                                                                                          ## array.


proc getID*(): StandardGUID {.importcpp: "TDataStd_BooleanArray::GetID(@)",
                           header: "TDataStd_BooleanArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint): Handle[TDataStdBooleanArray] {.
    importcpp: "TDataStd_BooleanArray::Set(@)",
    header: "TDataStd_BooleanArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint): Handle[
    TDataStdBooleanArray] {.importcpp: "TDataStd_BooleanArray::Set(@)",
                           header: "TDataStd_BooleanArray.hxx".}
proc init*(this: var TDataStdBooleanArray; lower: cint; upper: cint) {.
    importcpp: "Init", header: "TDataStd_BooleanArray.hxx".}
proc setValue*(this: var TDataStdBooleanArray; index: cint; value: bool) {.
    importcpp: "SetValue", header: "TDataStd_BooleanArray.hxx".}
proc setID*(this: var TDataStdBooleanArray; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_BooleanArray.hxx".}
proc setID*(this: var TDataStdBooleanArray) {.importcpp: "SetID",
    header: "TDataStd_BooleanArray.hxx".}
proc value*(this: TDataStdBooleanArray; index: cint): bool {.noSideEffect,
    importcpp: "Value", header: "TDataStd_BooleanArray.hxx".}
proc `()`*(this: TDataStdBooleanArray; index: cint): bool {.noSideEffect,
    importcpp: "#(@)", header: "TDataStd_BooleanArray.hxx".}
proc lower*(this: TDataStdBooleanArray): cint {.noSideEffect, importcpp: "Lower",
    header: "TDataStd_BooleanArray.hxx".}
proc upper*(this: TDataStdBooleanArray): cint {.noSideEffect, importcpp: "Upper",
    header: "TDataStd_BooleanArray.hxx".}
proc length*(this: TDataStdBooleanArray): cint {.noSideEffect, importcpp: "Length",
    header: "TDataStd_BooleanArray.hxx".}
proc internalArray*(this: TDataStdBooleanArray): Handle[TColStdHArray1OfByte] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_BooleanArray.hxx".}
proc setInternalArray*(this: var TDataStdBooleanArray;
                      values: Handle[TColStdHArray1OfByte]) {.
    importcpp: "SetInternalArray", header: "TDataStd_BooleanArray.hxx".}
proc constructTDataStdBooleanArray*(): TDataStdBooleanArray {.constructor,
    importcpp: "TDataStd_BooleanArray(@)", header: "TDataStd_BooleanArray.hxx".}
proc id*(this: TDataStdBooleanArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_BooleanArray.hxx".}
proc restore*(this: var TDataStdBooleanArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_BooleanArray.hxx".}
proc newEmpty*(this: TDataStdBooleanArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_BooleanArray.hxx".}
proc paste*(this: TDataStdBooleanArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_BooleanArray.hxx".}
proc dump*(this: TDataStdBooleanArray; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_BooleanArray.hxx".}
proc dumpJson*(this: TDataStdBooleanArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_BooleanArray.hxx".}
type
  TDataStdBooleanArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_BooleanArray::get_type_name(@)",
                            header: "TDataStd_BooleanArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_BooleanArray::get_type_descriptor(@)",
    header: "TDataStd_BooleanArray.hxx".}
proc dynamicType*(this: TDataStdBooleanArray): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_BooleanArray.hxx".}

























