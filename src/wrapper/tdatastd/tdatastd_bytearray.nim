import ../tcolstd/tcolstd_types
import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_ByteArray::GetID(@)",
                           header: "TDataStd_ByteArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdByteArray] {.cdecl, importcpp: "TDataStd_ByteArray::Set(@)",
                        header: "TDataStd_ByteArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdByteArray] {.cdecl,
    importcpp: "TDataStd_ByteArray::Set(@)", header: "TDataStd_ByteArray.hxx".}
proc init*(this: var TDataStdByteArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_ByteArray.hxx".}
proc setValue*(this: var TDataStdByteArray; index: cint; value: StandardByte) {.cdecl,
    importcpp: "SetValue", header: "TDataStd_ByteArray.hxx".}
proc setID*(this: var TDataStdByteArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_ByteArray.hxx".}
proc setID*(this: var TDataStdByteArray) {.cdecl, importcpp: "SetID",
                                       header: "TDataStd_ByteArray.hxx".}
proc value*(this: TDataStdByteArray; index: cint): StandardByte {.noSideEffect, cdecl,
    importcpp: "Value", header: "TDataStd_ByteArray.hxx".}
#proc `()`*(this: TDataStdByteArray; index: cint): StandardByte {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "TDataStd_ByteArray.hxx".}
proc lower*(this: TDataStdByteArray): cint {.noSideEffect, cdecl, importcpp: "Lower",
    header: "TDataStd_ByteArray.hxx".}
proc upper*(this: TDataStdByteArray): cint {.noSideEffect, cdecl, importcpp: "Upper",
    header: "TDataStd_ByteArray.hxx".}
proc length*(this: TDataStdByteArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_ByteArray.hxx".}
proc internalArray*(this: TDataStdByteArray): Handle[TColStdHArray1OfByte] {.
    noSideEffect, cdecl, importcpp: "InternalArray",
    header: "TDataStd_ByteArray.hxx".}
proc changeArray*(this: var TDataStdByteArray;
                 newArray: Handle[TColStdHArray1OfByte]; isCheckItems: bool = true) {.
    cdecl, importcpp: "ChangeArray", header: "TDataStd_ByteArray.hxx".}
proc getDelta*(this: TDataStdByteArray): bool {.noSideEffect, cdecl,
    importcpp: "GetDelta", header: "TDataStd_ByteArray.hxx".}
proc setDelta*(this: var TDataStdByteArray; isDelta: bool) {.cdecl,
    importcpp: "SetDelta", header: "TDataStd_ByteArray.hxx".}
proc newTDataStdByteArray*(): TDataStdByteArray {.cdecl, constructor,
    importcpp: "TDataStd_ByteArray(@)", header: "TDataStd_ByteArray.hxx".}
proc id*(this: TDataStdByteArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_ByteArray.hxx".}
proc restore*(this: var TDataStdByteArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_ByteArray.hxx".}
proc newEmpty*(this: TDataStdByteArray): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_ByteArray.hxx".}
proc paste*(this: TDataStdByteArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_ByteArray.hxx".}
proc dump*(this: TDataStdByteArray; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_ByteArray.hxx".}
proc deltaOnModification*(this: TDataStdByteArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDataStd_ByteArray.hxx".}
proc dumpJson*(this: TDataStdByteArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_ByteArray.hxx".}

