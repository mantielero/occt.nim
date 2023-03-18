import ../tcolstd/tcolstd_types
import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types


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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_ExtStringArray::GetID(@)",
                           header: "TDataStd_ExtStringArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdExtStringArray] {.cdecl, importcpp: "TDataStd_ExtStringArray::Set(@)",
                             header: "TDataStd_ExtStringArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdExtStringArray] {.cdecl,
    importcpp: "TDataStd_ExtStringArray::Set(@)",
    header: "TDataStd_ExtStringArray.hxx".}
proc init*(this: var TDataStdExtStringArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_ExtStringArray.hxx".}
proc setValue*(this: var TDataStdExtStringArray; index: cint;
              value: TCollectionExtendedString) {.cdecl, importcpp: "SetValue",
    header: "TDataStd_ExtStringArray.hxx".}
proc setID*(this: var TDataStdExtStringArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_ExtStringArray.hxx".}
proc setID*(this: var TDataStdExtStringArray) {.cdecl, importcpp: "SetID",
    header: "TDataStd_ExtStringArray.hxx".}
proc value*(this: TDataStdExtStringArray; index: cint): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "Value", header: "TDataStd_ExtStringArray.hxx".}
#proc `()`*(this: TDataStdExtStringArray; index: cint): TCollectionExtendedString {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "TDataStd_ExtStringArray.hxx".}
proc lower*(this: TDataStdExtStringArray): cint {.noSideEffect, cdecl,
    importcpp: "Lower", header: "TDataStd_ExtStringArray.hxx".}
proc upper*(this: TDataStdExtStringArray): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "TDataStd_ExtStringArray.hxx".}
proc length*(this: TDataStdExtStringArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_ExtStringArray.hxx".}
proc changeArray*(this: var TDataStdExtStringArray;
                 newArray: Handle[TColStdHArray1OfExtendedString];
                 isCheckItems: bool = true) {.cdecl, importcpp: "ChangeArray",
    header: "TDataStd_ExtStringArray.hxx".}
proc array*(this: TDataStdExtStringArray): Handle[TColStdHArray1OfExtendedString] {.
    noSideEffect, cdecl, importcpp: "Array", header: "TDataStd_ExtStringArray.hxx".}
proc getDelta*(this: TDataStdExtStringArray): bool {.noSideEffect, cdecl,
    importcpp: "GetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc setDelta*(this: var TDataStdExtStringArray; isDelta: bool) {.cdecl,
    importcpp: "SetDelta", header: "TDataStd_ExtStringArray.hxx".}
proc newTDataStdExtStringArray*(): TDataStdExtStringArray {.cdecl, constructor,
    importcpp: "TDataStd_ExtStringArray(@)", header: "TDataStd_ExtStringArray.hxx".}
proc id*(this: TDataStdExtStringArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_ExtStringArray.hxx".}
proc restore*(this: var TDataStdExtStringArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_ExtStringArray.hxx".}
proc newEmpty*(this: TDataStdExtStringArray): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_ExtStringArray.hxx".}
proc paste*(this: TDataStdExtStringArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_ExtStringArray.hxx".}
proc dump*(this: TDataStdExtStringArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_ExtStringArray.hxx".}
proc deltaOnModification*(this: TDataStdExtStringArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDataStd_ExtStringArray.hxx".}
proc dumpJson*(this: TDataStdExtStringArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_ExtStringArray.hxx".}

