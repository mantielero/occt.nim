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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_ReferenceArray::GetID(@)",
                           header: "TDataStd_ReferenceArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint): Handle[TDataStdReferenceArray] {.
    cdecl, importcpp: "TDataStd_ReferenceArray::Set(@)",
    header: "TDataStd_ReferenceArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint): Handle[
    TDataStdReferenceArray] {.cdecl, importcpp: "TDataStd_ReferenceArray::Set(@)",
                             header: "TDataStd_ReferenceArray.hxx".}
proc init*(this: var TDataStdReferenceArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_ReferenceArray.hxx".}
proc setValue*(this: var TDataStdReferenceArray; index: cint; value: TDF_Label) {.cdecl,
    importcpp: "SetValue", header: "TDataStd_ReferenceArray.hxx".}
proc setID*(this: var TDataStdReferenceArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_ReferenceArray.hxx".}
proc setID*(this: var TDataStdReferenceArray) {.cdecl, importcpp: "SetID",
    header: "TDataStd_ReferenceArray.hxx".}
proc value*(this: TDataStdReferenceArray; index: cint): TDF_Label {.noSideEffect,
    cdecl, importcpp: "Value", header: "TDataStd_ReferenceArray.hxx".}
#proc `()`*(this: TDataStdReferenceArray; index: cint): TDF_Label {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "TDataStd_ReferenceArray.hxx".}
proc lower*(this: TDataStdReferenceArray): cint {.noSideEffect, cdecl,
    importcpp: "Lower", header: "TDataStd_ReferenceArray.hxx".}
proc upper*(this: TDataStdReferenceArray): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "TDataStd_ReferenceArray.hxx".}
proc length*(this: TDataStdReferenceArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_ReferenceArray.hxx".}
proc internalArray*(this: TDataStdReferenceArray): Handle[TDataStdHLabelArray1] {.
    noSideEffect, cdecl, importcpp: "InternalArray",
    header: "TDataStd_ReferenceArray.hxx".}
proc setInternalArray*(this: var TDataStdReferenceArray;
                      values: Handle[TDataStdHLabelArray1];
                      isCheckItems: bool = true) {.cdecl,
    importcpp: "SetInternalArray", header: "TDataStd_ReferenceArray.hxx".}
proc newTDataStdReferenceArray*(): TDataStdReferenceArray {.cdecl, constructor,
    importcpp: "TDataStd_ReferenceArray(@)", header: "TDataStd_ReferenceArray.hxx".}
proc id*(this: TDataStdReferenceArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_ReferenceArray.hxx".}
proc restore*(this: var TDataStdReferenceArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_ReferenceArray.hxx".}
proc newEmpty*(this: TDataStdReferenceArray): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_ReferenceArray.hxx".}
proc paste*(this: TDataStdReferenceArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_ReferenceArray.hxx".}
proc references*(this: TDataStdReferenceArray; ds: Handle[TDF_DataSet]) {.
    noSideEffect, cdecl, importcpp: "References",
    header: "TDataStd_ReferenceArray.hxx".}
proc dump*(this: TDataStdReferenceArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_ReferenceArray.hxx".}
proc dumpJson*(this: TDataStdReferenceArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_ReferenceArray.hxx".}

