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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of TDataStd_DeltaOnModificationOfIntArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_IntegerArray"
discard "forward decl of TDataStd_IntegerArray"
type
  Handle_TDataStd_IntegerArray* = handle[TDataStd_IntegerArray]

## ! Contains an array of integers.

type
  TDataStd_IntegerArray* {.importcpp: "TDataStd_IntegerArray",
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

  TDataStd_IntegerArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_IntegerArray::get_type_name(@)",
                              header: "TDataStd_IntegerArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_IntegerArray::get_type_descriptor(@)",
    header: "TDataStd_IntegerArray.hxx".}
proc DynamicType*(this: TDataStd_IntegerArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_IntegerArray.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_IntegerArray::GetID(@)",
                            header: "TDataStd_IntegerArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer;
         isDelta: Standard_Boolean = Standard_False): handle[TDataStd_IntegerArray] {.
    importcpp: "TDataStd_IntegerArray::Set(@)",
    header: "TDataStd_IntegerArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer; isDelta: Standard_Boolean = Standard_False): handle[
    TDataStd_IntegerArray] {.importcpp: "TDataStd_IntegerArray::Set(@)",
                            header: "TDataStd_IntegerArray.hxx".}
proc Init*(this: var TDataStd_IntegerArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_IntegerArray.hxx".}
proc SetValue*(this: var TDataStd_IntegerArray; Index: Standard_Integer;
              Value: Standard_Integer) {.importcpp: "SetValue",
                                       header: "TDataStd_IntegerArray.hxx".}
proc SetID*(this: var TDataStd_IntegerArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_IntegerArray.hxx".}
proc SetID*(this: var TDataStd_IntegerArray) {.importcpp: "SetID",
    header: "TDataStd_IntegerArray.hxx".}
proc Value*(this: TDataStd_IntegerArray; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "TDataStd_IntegerArray.hxx".}
proc `()`*(this: TDataStd_IntegerArray; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_IntegerArray.hxx".}
proc Lower*(this: TDataStd_IntegerArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_IntegerArray.hxx".}
proc Upper*(this: TDataStd_IntegerArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_IntegerArray.hxx".}
proc Length*(this: TDataStd_IntegerArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_IntegerArray.hxx".}
proc ChangeArray*(this: var TDataStd_IntegerArray;
                 newArray: handle[TColStd_HArray1OfInteger];
                 isCheckItems: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeArray", header: "TDataStd_IntegerArray.hxx".}
proc Array*(this: TDataStd_IntegerArray): handle[TColStd_HArray1OfInteger] {.
    noSideEffect, importcpp: "Array", header: "TDataStd_IntegerArray.hxx".}
proc GetDelta*(this: TDataStd_IntegerArray): Standard_Boolean {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_IntegerArray.hxx".}
proc SetDelta*(this: var TDataStd_IntegerArray; isDelta: Standard_Boolean) {.
    importcpp: "SetDelta", header: "TDataStd_IntegerArray.hxx".}
proc constructTDataStd_IntegerArray*(): TDataStd_IntegerArray {.constructor,
    importcpp: "TDataStd_IntegerArray(@)", header: "TDataStd_IntegerArray.hxx".}
proc ID*(this: TDataStd_IntegerArray): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_IntegerArray.hxx".}
proc Restore*(this: var TDataStd_IntegerArray; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_IntegerArray.hxx".}
proc NewEmpty*(this: TDataStd_IntegerArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_IntegerArray.hxx".}
proc Paste*(this: TDataStd_IntegerArray; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_IntegerArray.hxx".}
proc Dump*(this: TDataStd_IntegerArray; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_IntegerArray.hxx".}
proc DeltaOnModification*(this: TDataStd_IntegerArray;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_IntegerArray.hxx".}
proc DumpJson*(this: TDataStd_IntegerArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_IntegerArray.hxx".}