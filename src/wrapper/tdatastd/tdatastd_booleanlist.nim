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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_BooleanList::GetID(@)",
                           header: "TDataStd_BooleanList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdBooleanList] {.cdecl,
    importcpp: "TDataStd_BooleanList::Set(@)", header: "TDataStd_BooleanList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdBooleanList] {.
    cdecl, importcpp: "TDataStd_BooleanList::Set(@)",
    header: "TDataStd_BooleanList.hxx".}
proc newTDataStdBooleanList*(): TDataStdBooleanList {.cdecl, constructor,
    importcpp: "TDataStd_BooleanList(@)", header: "TDataStd_BooleanList.hxx".}
proc isEmpty*(this: TDataStdBooleanList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_BooleanList.hxx".}
proc extent*(this: TDataStdBooleanList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TDataStd_BooleanList.hxx".}
proc prepend*(this: var TDataStdBooleanList; value: bool) {.cdecl,
    importcpp: "Prepend", header: "TDataStd_BooleanList.hxx".}
proc append*(this: var TDataStdBooleanList; value: bool) {.cdecl, importcpp: "Append",
    header: "TDataStd_BooleanList.hxx".}
proc clear*(this: var TDataStdBooleanList) {.cdecl, importcpp: "Clear",
    header: "TDataStd_BooleanList.hxx".}
proc first*(this: TDataStdBooleanList): bool {.noSideEffect, cdecl,
    importcpp: "First", header: "TDataStd_BooleanList.hxx".}
proc last*(this: TDataStdBooleanList): bool {.noSideEffect, cdecl, importcpp: "Last",
    header: "TDataStd_BooleanList.hxx".}
proc list*(this: TDataStdBooleanList): TDataStdListOfByte {.noSideEffect, cdecl,
    importcpp: "List", header: "TDataStd_BooleanList.hxx".}
proc insertBefore*(this: var TDataStdBooleanList; index: cint; beforeValue: bool): bool {.
    cdecl, importcpp: "InsertBefore", header: "TDataStd_BooleanList.hxx".}
proc insertAfter*(this: var TDataStdBooleanList; index: cint; afterValue: bool): bool {.
    cdecl, importcpp: "InsertAfter", header: "TDataStd_BooleanList.hxx".}
proc remove*(this: var TDataStdBooleanList; index: cint): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_BooleanList.hxx".}
proc setID*(this: var TDataStdBooleanList; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_BooleanList.hxx".}
proc setID*(this: var TDataStdBooleanList) {.cdecl, importcpp: "SetID",
    header: "TDataStd_BooleanList.hxx".}
proc id*(this: TDataStdBooleanList): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_BooleanList.hxx".}
proc restore*(this: var TDataStdBooleanList; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_BooleanList.hxx".}
proc newEmpty*(this: TDataStdBooleanList): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_BooleanList.hxx".}
proc paste*(this: TDataStdBooleanList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_BooleanList.hxx".}
proc dump*(this: TDataStdBooleanList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_BooleanList.hxx".}
proc dumpJson*(this: TDataStdBooleanList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_BooleanList.hxx".}

