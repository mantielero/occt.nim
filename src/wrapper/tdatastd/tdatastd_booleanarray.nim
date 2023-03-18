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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_BooleanArray::GetID(@)",
                           header: "TDataStd_BooleanArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint): Handle[TDataStdBooleanArray] {.
    cdecl, importcpp: "TDataStd_BooleanArray::Set(@)",
    header: "TDataStd_BooleanArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint): Handle[
    TDataStdBooleanArray] {.cdecl, importcpp: "TDataStd_BooleanArray::Set(@)",
                           header: "TDataStd_BooleanArray.hxx".}
proc init*(this: var TDataStdBooleanArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_BooleanArray.hxx".}
proc setValue*(this: var TDataStdBooleanArray; index: cint; value: bool) {.cdecl,
    importcpp: "SetValue", header: "TDataStd_BooleanArray.hxx".}
proc setID*(this: var TDataStdBooleanArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_BooleanArray.hxx".}
proc setID*(this: var TDataStdBooleanArray) {.cdecl, importcpp: "SetID",
    header: "TDataStd_BooleanArray.hxx".}
proc value*(this: TDataStdBooleanArray; index: cint): bool {.noSideEffect, cdecl,
    importcpp: "Value", header: "TDataStd_BooleanArray.hxx".}
#proc `()`*(this: TDataStdBooleanArray; index: cint): bool {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "TDataStd_BooleanArray.hxx".}
proc lower*(this: TDataStdBooleanArray): cint {.noSideEffect, cdecl,
    importcpp: "Lower", header: "TDataStd_BooleanArray.hxx".}
proc upper*(this: TDataStdBooleanArray): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "TDataStd_BooleanArray.hxx".}
proc length*(this: TDataStdBooleanArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_BooleanArray.hxx".}
proc internalArray*(this: TDataStdBooleanArray): Handle[TColStdHArray1OfByte] {.
    noSideEffect, cdecl, importcpp: "InternalArray",
    header: "TDataStd_BooleanArray.hxx".}
proc setInternalArray*(this: var TDataStdBooleanArray;
                      values: Handle[TColStdHArray1OfByte]) {.cdecl,
    importcpp: "SetInternalArray", header: "TDataStd_BooleanArray.hxx".}
proc newTDataStdBooleanArray*(): TDataStdBooleanArray {.cdecl, constructor,
    importcpp: "TDataStd_BooleanArray(@)", header: "TDataStd_BooleanArray.hxx".}
proc id*(this: TDataStdBooleanArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_BooleanArray.hxx".}
proc restore*(this: var TDataStdBooleanArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_BooleanArray.hxx".}
proc newEmpty*(this: TDataStdBooleanArray): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_BooleanArray.hxx".}
proc paste*(this: TDataStdBooleanArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_BooleanArray.hxx".}
proc dump*(this: TDataStdBooleanArray; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_BooleanArray.hxx".}
proc dumpJson*(this: TDataStdBooleanArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_BooleanArray.hxx".}

