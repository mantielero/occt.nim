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
  ../TColStd/TColStd_HArray1OfByte, ../Standard/Standard_Integer,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_BooleanArray"
discard "forward decl of TDataStd_BooleanArray"
type
  Handle_TDataStd_BooleanArray* = handle[TDataStd_BooleanArray]

## ! An array of boolean values.

type
  TDataStd_BooleanArray* {.importcpp: "TDataStd_BooleanArray",
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


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_BooleanArray::GetID(@)",
                            header: "TDataStd_BooleanArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer): handle[
    TDataStd_BooleanArray] {.importcpp: "TDataStd_BooleanArray::Set(@)",
                            header: "TDataStd_BooleanArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer): handle[TDataStd_BooleanArray] {.
    importcpp: "TDataStd_BooleanArray::Set(@)",
    header: "TDataStd_BooleanArray.hxx".}
proc Init*(this: var TDataStd_BooleanArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_BooleanArray.hxx".}
proc SetValue*(this: var TDataStd_BooleanArray; index: Standard_Integer;
              value: Standard_Boolean) {.importcpp: "SetValue",
                                       header: "TDataStd_BooleanArray.hxx".}
proc SetID*(this: var TDataStd_BooleanArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_BooleanArray.hxx".}
proc SetID*(this: var TDataStd_BooleanArray) {.importcpp: "SetID",
    header: "TDataStd_BooleanArray.hxx".}
proc Value*(this: TDataStd_BooleanArray; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Value", header: "TDataStd_BooleanArray.hxx".}
proc `()`*(this: TDataStd_BooleanArray; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_BooleanArray.hxx".}
proc Lower*(this: TDataStd_BooleanArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_BooleanArray.hxx".}
proc Upper*(this: TDataStd_BooleanArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_BooleanArray.hxx".}
proc Length*(this: TDataStd_BooleanArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_BooleanArray.hxx".}
proc InternalArray*(this: TDataStd_BooleanArray): handle[TColStd_HArray1OfByte] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_BooleanArray.hxx".}
proc SetInternalArray*(this: var TDataStd_BooleanArray;
                      values: handle[TColStd_HArray1OfByte]) {.
    importcpp: "SetInternalArray", header: "TDataStd_BooleanArray.hxx".}
proc constructTDataStd_BooleanArray*(): TDataStd_BooleanArray {.constructor,
    importcpp: "TDataStd_BooleanArray(@)", header: "TDataStd_BooleanArray.hxx".}
proc ID*(this: TDataStd_BooleanArray): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_BooleanArray.hxx".}
proc Restore*(this: var TDataStd_BooleanArray; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_BooleanArray.hxx".}
proc NewEmpty*(this: TDataStd_BooleanArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_BooleanArray.hxx".}
proc Paste*(this: TDataStd_BooleanArray; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_BooleanArray.hxx".}
proc Dump*(this: TDataStd_BooleanArray; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_BooleanArray.hxx".}
proc DumpJson*(this: TDataStd_BooleanArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_BooleanArray.hxx".}
type
  TDataStd_BooleanArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_BooleanArray::get_type_name(@)",
                              header: "TDataStd_BooleanArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_BooleanArray::get_type_descriptor(@)",
    header: "TDataStd_BooleanArray.hxx".}
proc DynamicType*(this: TDataStd_BooleanArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_BooleanArray.hxx".}