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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_ReferenceList::GetID(@)",
                           header: "TDataStd_ReferenceList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdReferenceList] {.cdecl,
    importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdReferenceList] {.
    cdecl, importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc newTDataStdReferenceList*(): TDataStdReferenceList {.cdecl, constructor,
    importcpp: "TDataStd_ReferenceList(@)", header: "TDataStd_ReferenceList.hxx".}
proc isEmpty*(this: TDataStdReferenceList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_ReferenceList.hxx".}
proc extent*(this: TDataStdReferenceList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TDataStd_ReferenceList.hxx".}
proc prepend*(this: var TDataStdReferenceList; value: TDF_Label) {.cdecl,
    importcpp: "Prepend", header: "TDataStd_ReferenceList.hxx".}
proc append*(this: var TDataStdReferenceList; value: TDF_Label) {.cdecl,
    importcpp: "Append", header: "TDataStd_ReferenceList.hxx".}
proc setID*(this: var TDataStdReferenceList; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_ReferenceList.hxx".}
proc setID*(this: var TDataStdReferenceList) {.cdecl, importcpp: "SetID",
    header: "TDataStd_ReferenceList.hxx".}
proc insertBefore*(this: var TDataStdReferenceList; value: TDF_Label;
                  beforeValue: TDF_Label): bool {.cdecl, importcpp: "InsertBefore",
    header: "TDataStd_ReferenceList.hxx".}
proc insertBefore*(this: var TDataStdReferenceList; index: cint;
                  beforeValue: TDF_Label): bool {.cdecl, importcpp: "InsertBefore",
    header: "TDataStd_ReferenceList.hxx".}
proc insertAfter*(this: var TDataStdReferenceList; value: TDF_Label;
                 afterValue: TDF_Label): bool {.cdecl, importcpp: "InsertAfter",
    header: "TDataStd_ReferenceList.hxx".}
proc insertAfter*(this: var TDataStdReferenceList; index: cint; afterValue: TDF_Label): bool {.
    cdecl, importcpp: "InsertAfter", header: "TDataStd_ReferenceList.hxx".}
proc remove*(this: var TDataStdReferenceList; value: TDF_Label): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_ReferenceList.hxx".}
proc remove*(this: var TDataStdReferenceList; index: cint): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_ReferenceList.hxx".}
proc clear*(this: var TDataStdReferenceList) {.cdecl, importcpp: "Clear",
    header: "TDataStd_ReferenceList.hxx".}
proc first*(this: TDataStdReferenceList): TDF_Label {.noSideEffect, cdecl,
    importcpp: "First", header: "TDataStd_ReferenceList.hxx".}
proc last*(this: TDataStdReferenceList): TDF_Label {.noSideEffect, cdecl,
    importcpp: "Last", header: "TDataStd_ReferenceList.hxx".}
proc list*(this: TDataStdReferenceList): TDF_LabelList {.noSideEffect, cdecl,
    importcpp: "List", header: "TDataStd_ReferenceList.hxx".}
proc id*(this: TDataStdReferenceList): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_ReferenceList.hxx".}
proc restore*(this: var TDataStdReferenceList; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_ReferenceList.hxx".}
proc newEmpty*(this: TDataStdReferenceList): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_ReferenceList.hxx".}
proc paste*(this: TDataStdReferenceList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_ReferenceList.hxx".}
proc references*(this: TDataStdReferenceList; ds: Handle[TDF_DataSet]) {.
    noSideEffect, cdecl, importcpp: "References",
    header: "TDataStd_ReferenceList.hxx".}
proc dump*(this: TDataStdReferenceList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_ReferenceList.hxx".}
proc dumpJson*(this: TDataStdReferenceList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_ReferenceList.hxx".}

