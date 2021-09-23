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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfByte, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute, ../Standard/Standard_Integer, ../Standard/Standard_Byte,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_ByteArray"
discard "forward decl of TDataStd_ByteArray"
type
  Handle_TDataStd_ByteArray* = handle[TDataStd_ByteArray]

## ! An array of Byte (unsigned char) values.

type
  TDataStd_ByteArray* {.importcpp: "TDataStd_ByteArray",
                       header: "TDataStd_ByteArray.hxx", bycopy.} = object of TDF_Attribute ##
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

  TDataStd_ByteArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_ByteArray::get_type_name(@)",
                              header: "TDataStd_ByteArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_ByteArray::get_type_descriptor(@)",
    header: "TDataStd_ByteArray.hxx".}
proc DynamicType*(this: TDataStd_ByteArray): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_ByteArray.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_ByteArray::GetID(@)",
                            header: "TDataStd_ByteArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer;
         isDelta: Standard_Boolean = Standard_False): handle[TDataStd_ByteArray] {.
    importcpp: "TDataStd_ByteArray::Set(@)", header: "TDataStd_ByteArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer; isDelta: Standard_Boolean = Standard_False): handle[
    TDataStd_ByteArray] {.importcpp: "TDataStd_ByteArray::Set(@)",
                         header: "TDataStd_ByteArray.hxx".}
proc Init*(this: var TDataStd_ByteArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_ByteArray.hxx".}
proc SetValue*(this: var TDataStd_ByteArray; index: Standard_Integer;
              value: Standard_Byte) {.importcpp: "SetValue",
                                    header: "TDataStd_ByteArray.hxx".}
proc SetID*(this: var TDataStd_ByteArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_ByteArray.hxx".}
proc SetID*(this: var TDataStd_ByteArray) {.importcpp: "SetID",
                                        header: "TDataStd_ByteArray.hxx".}
proc Value*(this: TDataStd_ByteArray; Index: Standard_Integer): Standard_Byte {.
    noSideEffect, importcpp: "Value", header: "TDataStd_ByteArray.hxx".}
proc `()`*(this: TDataStd_ByteArray; Index: Standard_Integer): Standard_Byte {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_ByteArray.hxx".}
proc Lower*(this: TDataStd_ByteArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_ByteArray.hxx".}
proc Upper*(this: TDataStd_ByteArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_ByteArray.hxx".}
proc Length*(this: TDataStd_ByteArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_ByteArray.hxx".}
proc InternalArray*(this: TDataStd_ByteArray): handle[TColStd_HArray1OfByte] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_ByteArray.hxx".}
proc ChangeArray*(this: var TDataStd_ByteArray;
                 newArray: handle[TColStd_HArray1OfByte];
                 isCheckItems: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeArray", header: "TDataStd_ByteArray.hxx".}
proc GetDelta*(this: TDataStd_ByteArray): Standard_Boolean {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_ByteArray.hxx".}
proc SetDelta*(this: var TDataStd_ByteArray; isDelta: Standard_Boolean) {.
    importcpp: "SetDelta", header: "TDataStd_ByteArray.hxx".}
proc constructTDataStd_ByteArray*(): TDataStd_ByteArray {.constructor,
    importcpp: "TDataStd_ByteArray(@)", header: "TDataStd_ByteArray.hxx".}
proc ID*(this: TDataStd_ByteArray): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ByteArray.hxx".}
proc Restore*(this: var TDataStd_ByteArray; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ByteArray.hxx".}
proc NewEmpty*(this: TDataStd_ByteArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ByteArray.hxx".}
proc Paste*(this: TDataStd_ByteArray; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ByteArray.hxx".}
proc Dump*(this: TDataStd_ByteArray; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ByteArray.hxx".}
proc DeltaOnModification*(this: TDataStd_ByteArray;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_ByteArray.hxx".}
proc DumpJson*(this: TDataStd_ByteArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_ByteArray.hxx".}