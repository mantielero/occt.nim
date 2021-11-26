##  Created on: 2002-01-16
##  Created by: Michael PONIKAROV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_ExtStringArray"
discard "forward decl of TDataStd_ExtStringArray"
type
  HandleC1C1* = Handle[TDataStdExtStringArray]

## ! ExtStringArray Attribute. Handles an array of UNICODE strings (represented by the TCollection_ExtendedString class).

type
  TDataStdExtStringArray* {.importcpp: "TDataStd_ExtStringArray",
                           header: "TDataStd_ExtStringArray.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                              ## the
                                                                                              ## attribute.

  TDataStdExtStringArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_ExtStringArray::get_type_name(@)",
                            header: "TDataStd_ExtStringArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_ExtStringArray::get_type_descriptor(@)",
    header: "TDataStd_ExtStringArray.hxx".}
proc dynamicType*(this: TDataStdExtStringArray): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ExtStringArray.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataStd_ExtStringArray::GetID(@)",
                           header: "TDataStd_ExtStringArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdExtStringArray] {.importcpp: "TDataStd_ExtStringArray::Set(@)",
                             header: "TDataStd_ExtStringArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdExtStringArray] {.
    importcpp: "TDataStd_ExtStringArray::Set(@)",
    header: "TDataStd_ExtStringArray.hxx".}
proc init*(this: var TDataStdExtStringArray; lower: cint; upper: cint) {.
    importcpp: "Init", header: "TDataStd_ExtStringArray.hxx".}
proc setValue*(this: var TDataStdExtStringArray; index: cint;
              value: TCollectionExtendedString) {.importcpp: "SetValue",
    header: "TDataStd_ExtStringArray.hxx".}
proc setID*(this: var TDataStdExtStringArray; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_ExtStringArray.hxx".}
proc setID*(this: var TDataStdExtStringArray) {.importcpp: "SetID",
    header: "TDataStd_ExtStringArray.hxx".}
proc value*(this: TDataStdExtStringArray; index: cint): TCollectionExtendedString {.
    noSideEffect, importcpp: "Value", header: "TDataStd_ExtStringArray.hxx".}
proc `()`*(this: TDataStdExtStringArray; index: cint): TCollectionExtendedString {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_ExtStringArray.hxx".}
proc lower*(this: TDataStdExtStringArray): cint {.noSideEffect, importcpp: "Lower",
    header: "TDataStd_ExtStringArray.hxx".}
proc upper*(this: TDataStdExtStringArray): cint {.noSideEffect, importcpp: "Upper",
    header: "TDataStd_ExtStringArray.hxx".}
proc length*(this: TDataStdExtStringArray): cint {.noSideEffect, importcpp: "Length",
    header: "TDataStd_ExtStringArray.hxx".}
proc changeArray*(this: var TDataStdExtStringArray;
                 newArray: Handle[TColStdHArray1OfExtendedString];
                 isCheckItems: bool = true) {.importcpp: "ChangeArray",
    header: "TDataStd_ExtStringArray.hxx".}
proc array*(this: TDataStdExtStringArray): Handle[TColStdHArray1OfExtendedString] {.
    noSideEffect, importcpp: "Array", header: "TDataStd_ExtStringArray.hxx".}
proc getDelta*(this: TDataStdExtStringArray): bool {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc setDelta*(this: var TDataStdExtStringArray; isDelta: bool) {.
    importcpp: "SetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc constructTDataStdExtStringArray*(): TDataStdExtStringArray {.constructor,
    importcpp: "TDataStd_ExtStringArray(@)", header: "TDataStd_ExtStringArray.hxx".}
proc id*(this: TDataStdExtStringArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ExtStringArray.hxx".}
proc restore*(this: var TDataStdExtStringArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ExtStringArray.hxx".}
proc newEmpty*(this: TDataStdExtStringArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ExtStringArray.hxx".}
proc paste*(this: TDataStdExtStringArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ExtStringArray.hxx".}
proc dump*(this: TDataStdExtStringArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ExtStringArray.hxx".}
proc deltaOnModification*(this: TDataStdExtStringArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_ExtStringArray.hxx".}
proc dumpJson*(this: TDataStdExtStringArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_ExtStringArray.hxx".}

























