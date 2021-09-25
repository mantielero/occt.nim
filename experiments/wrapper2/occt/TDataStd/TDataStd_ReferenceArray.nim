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
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_ReferenceArray"
discard "forward decl of TDataStd_ReferenceArray"
type
  HandleTDataStdReferenceArray* = Handle[TDataStdReferenceArray]

## ! Contains an array of references to the labels.

type
  TDataStdReferenceArray* {.importcpp: "TDataStd_ReferenceArray",
                           header: "TDataStd_ReferenceArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                              ## !
                                                                                              ## Static
                                                                                              ## methods
                                                                                              ##
                                                                                              ## !
                                                                                              ## ==============
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## ID
                                                                                              ## of
                                                                                              ## the
                                                                                              ## array
                                                                                              ## of
                                                                                              ## references
                                                                                              ## (labels)
                                                                                              ## attribute.


proc getID*(): StandardGUID {.importcpp: "TDataStd_ReferenceArray::GetID(@)",
                           header: "TDataStd_ReferenceArray.hxx".}
proc set*(label: TDF_Label; lower: int; upper: int): Handle[TDataStdReferenceArray] {.
    importcpp: "TDataStd_ReferenceArray::Set(@)",
    header: "TDataStd_ReferenceArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: int; upper: int): Handle[
    TDataStdReferenceArray] {.importcpp: "TDataStd_ReferenceArray::Set(@)",
                             header: "TDataStd_ReferenceArray.hxx".}
proc init*(this: var TDataStdReferenceArray; lower: int; upper: int) {.
    importcpp: "Init", header: "TDataStd_ReferenceArray.hxx".}
proc setValue*(this: var TDataStdReferenceArray; index: int; value: TDF_Label) {.
    importcpp: "SetValue", header: "TDataStd_ReferenceArray.hxx".}
proc setID*(this: var TDataStdReferenceArray; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_ReferenceArray.hxx".}
proc setID*(this: var TDataStdReferenceArray) {.importcpp: "SetID",
    header: "TDataStd_ReferenceArray.hxx".}
proc value*(this: TDataStdReferenceArray; index: int): TDF_Label {.noSideEffect,
    importcpp: "Value", header: "TDataStd_ReferenceArray.hxx".}
proc `()`*(this: TDataStdReferenceArray; index: int): TDF_Label {.noSideEffect,
    importcpp: "#(@)", header: "TDataStd_ReferenceArray.hxx".}
proc lower*(this: TDataStdReferenceArray): int {.noSideEffect, importcpp: "Lower",
    header: "TDataStd_ReferenceArray.hxx".}
proc upper*(this: TDataStdReferenceArray): int {.noSideEffect, importcpp: "Upper",
    header: "TDataStd_ReferenceArray.hxx".}
proc length*(this: TDataStdReferenceArray): int {.noSideEffect, importcpp: "Length",
    header: "TDataStd_ReferenceArray.hxx".}
proc internalArray*(this: TDataStdReferenceArray): Handle[TDataStdHLabelArray1] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_ReferenceArray.hxx".}
proc setInternalArray*(this: var TDataStdReferenceArray;
                      values: Handle[TDataStdHLabelArray1];
                      isCheckItems: bool = true) {.importcpp: "SetInternalArray",
    header: "TDataStd_ReferenceArray.hxx".}
proc constructTDataStdReferenceArray*(): TDataStdReferenceArray {.constructor,
    importcpp: "TDataStd_ReferenceArray(@)", header: "TDataStd_ReferenceArray.hxx".}
proc id*(this: TDataStdReferenceArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ReferenceArray.hxx".}
proc restore*(this: var TDataStdReferenceArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ReferenceArray.hxx".}
proc newEmpty*(this: TDataStdReferenceArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ReferenceArray.hxx".}
proc paste*(this: TDataStdReferenceArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ReferenceArray.hxx".}
proc references*(this: TDataStdReferenceArray; ds: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_ReferenceArray.hxx".}
proc dump*(this: TDataStdReferenceArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ReferenceArray.hxx".}
proc dumpJson*(this: TDataStdReferenceArray; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_ReferenceArray.hxx".}
type
  TDataStdReferenceArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_ReferenceArray::get_type_name(@)",
                            header: "TDataStd_ReferenceArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_ReferenceArray::get_type_descriptor(@)",
    header: "TDataStd_ReferenceArray.hxx".}
proc dynamicType*(this: TDataStdReferenceArray): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ReferenceArray.hxx".}
