##  Created on: 1999-06-16
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TDataStd_DeltaOnModificationOfIntArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_IntegerArray"
discard "forward decl of TDataStd_IntegerArray"
type
  HandleC1C1* = Handle[TDataStdIntegerArray]

## ! Contains an array of integers.

type
  TDataStdIntegerArray* {.importcpp: "TDataStd_IntegerArray",
                         header: "TDataStd_IntegerArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                          ## !
                                                                                          ## class
                                                                                          ## methods
                                                                                          ##
                                                                                          ## !
                                                                                          ## =============
                                                                                          ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## the
                                                                                          ## GUID
                                                                                          ## for
                                                                                          ## arrays
                                                                                          ## of
                                                                                          ## integers.

  TDataStdIntegerArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_IntegerArray::get_type_name(@)",
                            header: "TDataStd_IntegerArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_IntegerArray::get_type_descriptor(@)",
    header: "TDataStd_IntegerArray.hxx".}
proc dynamicType*(this: TDataStdIntegerArray): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_IntegerArray.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataStd_IntegerArray::GetID(@)",
                           header: "TDataStd_IntegerArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdIntegerArray] {.importcpp: "TDataStd_IntegerArray::Set(@)",
                           header: "TDataStd_IntegerArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdIntegerArray] {.
    importcpp: "TDataStd_IntegerArray::Set(@)",
    header: "TDataStd_IntegerArray.hxx".}
proc init*(this: var TDataStdIntegerArray; lower: cint; upper: cint) {.
    importcpp: "Init", header: "TDataStd_IntegerArray.hxx".}
proc setValue*(this: var TDataStdIntegerArray; index: cint; value: cint) {.
    importcpp: "SetValue", header: "TDataStd_IntegerArray.hxx".}
proc setID*(this: var TDataStdIntegerArray; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_IntegerArray.hxx".}
proc setID*(this: var TDataStdIntegerArray) {.importcpp: "SetID",
    header: "TDataStd_IntegerArray.hxx".}
proc value*(this: TDataStdIntegerArray; index: cint): cint {.noSideEffect,
    importcpp: "Value", header: "TDataStd_IntegerArray.hxx".}
proc `()`*(this: TDataStdIntegerArray; index: cint): cint {.noSideEffect,
    importcpp: "#(@)", header: "TDataStd_IntegerArray.hxx".}
proc lower*(this: TDataStdIntegerArray): cint {.noSideEffect, importcpp: "Lower",
    header: "TDataStd_IntegerArray.hxx".}
proc upper*(this: TDataStdIntegerArray): cint {.noSideEffect, importcpp: "Upper",
    header: "TDataStd_IntegerArray.hxx".}
proc length*(this: TDataStdIntegerArray): cint {.noSideEffect, importcpp: "Length",
    header: "TDataStd_IntegerArray.hxx".}
proc changeArray*(this: var TDataStdIntegerArray;
                 newArray: Handle[TColStdHArray1OfInteger];
                 isCheckItems: bool = true) {.importcpp: "ChangeArray",
    header: "TDataStd_IntegerArray.hxx".}
proc array*(this: TDataStdIntegerArray): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, importcpp: "Array", header: "TDataStd_IntegerArray.hxx".}
proc getDelta*(this: TDataStdIntegerArray): bool {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_IntegerArray.hxx".}
proc setDelta*(this: var TDataStdIntegerArray; isDelta: bool) {.importcpp: "SetDelta",
    header: "TDataStd_IntegerArray.hxx".}
proc constructTDataStdIntegerArray*(): TDataStdIntegerArray {.constructor,
    importcpp: "TDataStd_IntegerArray(@)", header: "TDataStd_IntegerArray.hxx".}
proc id*(this: TDataStdIntegerArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_IntegerArray.hxx".}
proc restore*(this: var TDataStdIntegerArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_IntegerArray.hxx".}
proc newEmpty*(this: TDataStdIntegerArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_IntegerArray.hxx".}
proc paste*(this: TDataStdIntegerArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_IntegerArray.hxx".}
proc dump*(this: TDataStdIntegerArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_IntegerArray.hxx".}
proc deltaOnModification*(this: TDataStdIntegerArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_IntegerArray.hxx".}
proc dumpJson*(this: TDataStdIntegerArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_IntegerArray.hxx".}

























