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

import
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_HLabelArray1,
  ../TDF/TDF_Attribute, ../Standard/Standard_Integer, ../TDF/TDF_Label,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_ReferenceArray"
discard "forward decl of TDataStd_ReferenceArray"
type
  Handle_TDataStd_ReferenceArray* = handle[TDataStd_ReferenceArray]

## ! Contains an array of references to the labels.

type
  TDataStd_ReferenceArray* {.importcpp: "TDataStd_ReferenceArray",
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


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_ReferenceArray::GetID(@)",
                            header: "TDataStd_ReferenceArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer): handle[
    TDataStd_ReferenceArray] {.importcpp: "TDataStd_ReferenceArray::Set(@)",
                              header: "TDataStd_ReferenceArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer): handle[TDataStd_ReferenceArray] {.
    importcpp: "TDataStd_ReferenceArray::Set(@)",
    header: "TDataStd_ReferenceArray.hxx".}
proc Init*(this: var TDataStd_ReferenceArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_ReferenceArray.hxx".}
proc SetValue*(this: var TDataStd_ReferenceArray; index: Standard_Integer;
              value: TDF_Label) {.importcpp: "SetValue",
                                header: "TDataStd_ReferenceArray.hxx".}
proc SetID*(this: var TDataStd_ReferenceArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_ReferenceArray.hxx".}
proc SetID*(this: var TDataStd_ReferenceArray) {.importcpp: "SetID",
    header: "TDataStd_ReferenceArray.hxx".}
proc Value*(this: TDataStd_ReferenceArray; Index: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "Value", header: "TDataStd_ReferenceArray.hxx".}
proc `()`*(this: TDataStd_ReferenceArray; Index: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_ReferenceArray.hxx".}
proc Lower*(this: TDataStd_ReferenceArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_ReferenceArray.hxx".}
proc Upper*(this: TDataStd_ReferenceArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_ReferenceArray.hxx".}
proc Length*(this: TDataStd_ReferenceArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_ReferenceArray.hxx".}
proc InternalArray*(this: TDataStd_ReferenceArray): handle[TDataStd_HLabelArray1] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_ReferenceArray.hxx".}
proc SetInternalArray*(this: var TDataStd_ReferenceArray;
                      values: handle[TDataStd_HLabelArray1];
                      isCheckItems: Standard_Boolean = Standard_True) {.
    importcpp: "SetInternalArray", header: "TDataStd_ReferenceArray.hxx".}
proc constructTDataStd_ReferenceArray*(): TDataStd_ReferenceArray {.constructor,
    importcpp: "TDataStd_ReferenceArray(@)", header: "TDataStd_ReferenceArray.hxx".}
proc ID*(this: TDataStd_ReferenceArray): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_ReferenceArray.hxx".}
proc Restore*(this: var TDataStd_ReferenceArray; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ReferenceArray.hxx".}
proc NewEmpty*(this: TDataStd_ReferenceArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ReferenceArray.hxx".}
proc Paste*(this: TDataStd_ReferenceArray; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ReferenceArray.hxx".}
proc References*(this: TDataStd_ReferenceArray; DS: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_ReferenceArray.hxx".}
proc Dump*(this: TDataStd_ReferenceArray; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ReferenceArray.hxx".}
proc DumpJson*(this: TDataStd_ReferenceArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_ReferenceArray.hxx".}
type
  TDataStd_ReferenceArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_ReferenceArray::get_type_name(@)",
                              header: "TDataStd_ReferenceArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_ReferenceArray::get_type_descriptor(@)",
    header: "TDataStd_ReferenceArray.hxx".}
proc DynamicType*(this: TDataStd_ReferenceArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ReferenceArray.hxx".}