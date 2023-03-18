import ../tcolstd/tcolstd_types
import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_IntegerArray::GetID(@)",
                           header: "TDataStd_IntegerArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdIntegerArray] {.cdecl, importcpp: "TDataStd_IntegerArray::Set(@)",
                           header: "TDataStd_IntegerArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdIntegerArray] {.cdecl,
    importcpp: "TDataStd_IntegerArray::Set(@)",
    header: "TDataStd_IntegerArray.hxx".}
proc init*(this: var TDataStdIntegerArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_IntegerArray.hxx".}
proc setValue*(this: var TDataStdIntegerArray; index: cint; value: cint) {.cdecl,
    importcpp: "SetValue", header: "TDataStd_IntegerArray.hxx".}
proc setID*(this: var TDataStdIntegerArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_IntegerArray.hxx".}
proc setID*(this: var TDataStdIntegerArray) {.cdecl, importcpp: "SetID",
    header: "TDataStd_IntegerArray.hxx".}
proc value*(this: TDataStdIntegerArray; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Value", header: "TDataStd_IntegerArray.hxx".}
#proc `()`*(this: TDataStdIntegerArray; index: cint): cint {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "TDataStd_IntegerArray.hxx".}
proc lower*(this: TDataStdIntegerArray): cint {.noSideEffect, cdecl,
    importcpp: "Lower", header: "TDataStd_IntegerArray.hxx".}
proc upper*(this: TDataStdIntegerArray): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "TDataStd_IntegerArray.hxx".}
proc length*(this: TDataStdIntegerArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_IntegerArray.hxx".}
proc changeArray*(this: var TDataStdIntegerArray;
                 newArray: Handle[TColStdHArray1OfInteger];
                 isCheckItems: bool = true) {.cdecl, importcpp: "ChangeArray",
    header: "TDataStd_IntegerArray.hxx".}
proc array*(this: TDataStdIntegerArray): Handle[TColStdHArray1OfInteger] {.
    noSideEffect, cdecl, importcpp: "Array", header: "TDataStd_IntegerArray.hxx".}
proc getDelta*(this: TDataStdIntegerArray): bool {.noSideEffect, cdecl,
    importcpp: "GetDelta", header: "TDataStd_IntegerArray.hxx".}
proc setDelta*(this: var TDataStdIntegerArray; isDelta: bool) {.cdecl,
    importcpp: "SetDelta", header: "TDataStd_IntegerArray.hxx".}
proc newTDataStdIntegerArray*(): TDataStdIntegerArray {.cdecl, constructor,
    importcpp: "TDataStd_IntegerArray(@)", header: "TDataStd_IntegerArray.hxx".}
proc id*(this: TDataStdIntegerArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_IntegerArray.hxx".}
proc restore*(this: var TDataStdIntegerArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_IntegerArray.hxx".}
proc newEmpty*(this: TDataStdIntegerArray): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_IntegerArray.hxx".}
proc paste*(this: TDataStdIntegerArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_IntegerArray.hxx".}
proc dump*(this: TDataStdIntegerArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_IntegerArray.hxx".}
proc deltaOnModification*(this: TDataStdIntegerArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDataStd_IntegerArray.hxx".}
proc dumpJson*(this: TDataStdIntegerArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_IntegerArray.hxx".}

