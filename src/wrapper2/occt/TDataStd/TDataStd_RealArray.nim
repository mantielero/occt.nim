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
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute, ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of TDataStd_DeltaOnModificationOfRealArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_RealArray"
discard "forward decl of TDataStd_RealArray"
type
  Handle_TDataStd_RealArray* = handle[TDataStd_RealArray]

## ! A framework for an attribute composed of a real number array.

type
  TDataStd_RealArray* {.importcpp: "TDataStd_RealArray",
                       header: "TDataStd_RealArray.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                     ## reals.

  TDataStd_RealArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_RealArray::get_type_name(@)",
                              header: "TDataStd_RealArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_RealArray::get_type_descriptor(@)",
    header: "TDataStd_RealArray.hxx".}
proc DynamicType*(this: TDataStd_RealArray): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_RealArray.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_RealArray::GetID(@)",
                            header: "TDataStd_RealArray.hxx".}
proc Set*(label: TDF_Label; lower: Standard_Integer; upper: Standard_Integer;
         isDelta: Standard_Boolean = Standard_False): handle[TDataStd_RealArray] {.
    importcpp: "TDataStd_RealArray::Set(@)", header: "TDataStd_RealArray.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID; lower: Standard_Integer;
         upper: Standard_Integer; isDelta: Standard_Boolean = Standard_False): handle[
    TDataStd_RealArray] {.importcpp: "TDataStd_RealArray::Set(@)",
                         header: "TDataStd_RealArray.hxx".}
proc Init*(this: var TDataStd_RealArray; lower: Standard_Integer;
          upper: Standard_Integer) {.importcpp: "Init",
                                   header: "TDataStd_RealArray.hxx".}
proc SetID*(this: var TDataStd_RealArray; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_RealArray.hxx".}
proc SetID*(this: var TDataStd_RealArray) {.importcpp: "SetID",
                                        header: "TDataStd_RealArray.hxx".}
proc SetValue*(this: var TDataStd_RealArray; Index: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue",
                                    header: "TDataStd_RealArray.hxx".}
proc Value*(this: TDataStd_RealArray; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "TDataStd_RealArray.hxx".}
proc `()`*(this: TDataStd_RealArray; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "TDataStd_RealArray.hxx".}
proc Lower*(this: TDataStd_RealArray): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "TDataStd_RealArray.hxx".}
proc Upper*(this: TDataStd_RealArray): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "TDataStd_RealArray.hxx".}
proc Length*(this: TDataStd_RealArray): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "TDataStd_RealArray.hxx".}
proc ChangeArray*(this: var TDataStd_RealArray;
                 newArray: handle[TColStd_HArray1OfReal];
                 isCheckItems: Standard_Boolean = Standard_True) {.
    importcpp: "ChangeArray", header: "TDataStd_RealArray.hxx".}
proc Array*(this: TDataStd_RealArray): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "Array", header: "TDataStd_RealArray.hxx".}
proc GetDelta*(this: TDataStd_RealArray): Standard_Boolean {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_RealArray.hxx".}
proc SetDelta*(this: var TDataStd_RealArray; isDelta: Standard_Boolean) {.
    importcpp: "SetDelta", header: "TDataStd_RealArray.hxx".}
proc constructTDataStd_RealArray*(): TDataStd_RealArray {.constructor,
    importcpp: "TDataStd_RealArray(@)", header: "TDataStd_RealArray.hxx".}
proc ID*(this: TDataStd_RealArray): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_RealArray.hxx".}
proc Restore*(this: var TDataStd_RealArray; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_RealArray.hxx".}
proc NewEmpty*(this: TDataStd_RealArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_RealArray.hxx".}
proc Paste*(this: TDataStd_RealArray; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_RealArray.hxx".}
proc Dump*(this: TDataStd_RealArray; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_RealArray.hxx".}
proc DeltaOnModification*(this: TDataStd_RealArray;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_RealArray.hxx".}
proc DumpJson*(this: TDataStd_RealArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_RealArray.hxx".}