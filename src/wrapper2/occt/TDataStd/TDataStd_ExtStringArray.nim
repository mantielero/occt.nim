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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfExtendedString, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

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
  Handle_TDataStd_ExtStringArray* = handle[TDataStd_ExtStringArray]

## ! ExtStringArray Attribute. Handles an array of UNICODE strings (represented by the TCollection_ExtendedString class).

type
  TDataStd_ExtStringArray* {.importcpp: "TDataStd_ExtStringArray",
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

  TDataStd_ExtStringArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_ExtStringArray::get_type_name(@)",
                              header: "TDataStd_ExtStringArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_ExtStringArray::get_type_descriptor(@)",
    header: "TDataStd_ExtStringArray.hxx".}
proc DynamicType*(this: TDataStd_ExtStringArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ExtStringArray.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_ExtStringArray::GetID(@)",
                            header: "TDataStd_ExtStringArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer;
         isDelta: Standard_Boolean = Standard_False): handle[TDataStd_ExtStringArray] {.
    importcpp: "TDataStd_ExtStringArray::Set(@)",
    header: "TDataStd_ExtStringArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer; isDelta: Standard_Boolean = Standard_False): handle[
    TDataStd_ExtStringArray] {.importcpp: "TDataStd_ExtStringArray::Set(@)",
                              header: "TDataStd_ExtStringArray.hxx".}
proc Init*(this: var TDataStd_ExtStringArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_ExtStringArray.hxx".}
proc SetValue*(this: var TDataStd_ExtStringArray; Index: Standard_Integer;
              Value: TCollection_ExtendedString) {.importcpp: "SetValue",
    header: "TDataStd_ExtStringArray.hxx".}
proc SetID*(this: var TDataStd_ExtStringArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_ExtStringArray.hxx".}
proc SetID*(this: var TDataStd_ExtStringArray) {.importcpp: "SetID",
    header: "TDataStd_ExtStringArray.hxx".}
proc Value*(this: TDataStd_ExtStringArray; Index: Standard_Integer): TCollection_ExtendedString {.
    noSideEffect, importcpp: "Value", header: "TDataStd_ExtStringArray.hxx".}
proc `()`*(this: TDataStd_ExtStringArray; Index: Standard_Integer): TCollection_ExtendedString {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_ExtStringArray.hxx".}
proc Lower*(this: TDataStd_ExtStringArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_ExtStringArray.hxx".}
proc Upper*(this: TDataStd_ExtStringArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_ExtStringArray.hxx".}
proc Length*(this: TDataStd_ExtStringArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_ExtStringArray.hxx".}
proc ChangeArray*(this: var TDataStd_ExtStringArray;
                 newArray: handle[TColStd_HArray1OfExtendedString];
                 isCheckItems: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeArray", header: "TDataStd_ExtStringArray.hxx".}
proc Array*(this: TDataStd_ExtStringArray): handle[TColStd_HArray1OfExtendedString] {.
    noSideEffect, importcpp: "Array", header: "TDataStd_ExtStringArray.hxx".}
proc GetDelta*(this: TDataStd_ExtStringArray): Standard_Boolean {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc SetDelta*(this: var TDataStd_ExtStringArray; isDelta: Standard_Boolean) {.
    importcpp: "SetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc constructTDataStd_ExtStringArray*(): TDataStd_ExtStringArray {.constructor,
    importcpp: "TDataStd_ExtStringArray(@)", header: "TDataStd_ExtStringArray.hxx".}
proc ID*(this: TDataStd_ExtStringArray): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_ExtStringArray.hxx".}
proc Restore*(this: var TDataStd_ExtStringArray; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ExtStringArray.hxx".}
proc NewEmpty*(this: TDataStd_ExtStringArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ExtStringArray.hxx".}
proc Paste*(this: TDataStd_ExtStringArray; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ExtStringArray.hxx".}
proc Dump*(this: TDataStd_ExtStringArray; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ExtStringArray.hxx".}
proc DeltaOnModification*(this: TDataStd_ExtStringArray;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_ExtStringArray.hxx".}
proc DumpJson*(this: TDataStd_ExtStringArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_ExtStringArray.hxx".}