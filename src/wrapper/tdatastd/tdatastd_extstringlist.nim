#import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_ExtStringList::GetID(@)",
                           header: "TDataStd_ExtStringList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdExtStringList] {.cdecl,
    importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdExtStringList] {.
    cdecl, importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc newTDataStdExtStringList*(): TDataStdExtStringList {.cdecl, constructor,
    importcpp: "TDataStd_ExtStringList(@)", header: "TDataStd_ExtStringList.hxx".}
proc isEmpty*(this: TDataStdExtStringList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_ExtStringList.hxx".}
proc extent*(this: TDataStdExtStringList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TDataStd_ExtStringList.hxx".}
proc prepend*(this: var TDataStdExtStringList; value: TCollectionExtendedString) {.
    cdecl, importcpp: "Prepend", header: "TDataStd_ExtStringList.hxx".}
proc append*(this: var TDataStdExtStringList; value: TCollectionExtendedString) {.
    cdecl, importcpp: "Append", header: "TDataStd_ExtStringList.hxx".}
proc setID*(this: var TDataStdExtStringList; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_ExtStringList.hxx".}
proc setID*(this: var TDataStdExtStringList) {.cdecl, importcpp: "SetID",
    header: "TDataStd_ExtStringList.hxx".}
proc insertBefore*(this: var TDataStdExtStringList;
                  value: TCollectionExtendedString;
                  beforeValue: TCollectionExtendedString): bool {.cdecl,
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc insertBefore*(this: var TDataStdExtStringList; index: cint;
                  beforeValue: TCollectionExtendedString): bool {.cdecl,
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc insertAfter*(this: var TDataStdExtStringList; value: TCollectionExtendedString;
                 afterValue: TCollectionExtendedString): bool {.cdecl,
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc insertAfter*(this: var TDataStdExtStringList; index: cint;
                 afterValue: TCollectionExtendedString): bool {.cdecl,
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc remove*(this: var TDataStdExtStringList; value: TCollectionExtendedString): bool {.
    cdecl, importcpp: "Remove", header: "TDataStd_ExtStringList.hxx".}
proc remove*(this: var TDataStdExtStringList; index: cint): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_ExtStringList.hxx".}
proc clear*(this: var TDataStdExtStringList) {.cdecl, importcpp: "Clear",
    header: "TDataStd_ExtStringList.hxx".}
proc first*(this: TDataStdExtStringList): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "First", header: "TDataStd_ExtStringList.hxx".}
proc last*(this: TDataStdExtStringList): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "Last", header: "TDataStd_ExtStringList.hxx".}
proc list*(this: TDataStdExtStringList): TDataStdListOfExtendedString {.
    noSideEffect, cdecl, importcpp: "List", header: "TDataStd_ExtStringList.hxx".}
proc id*(this: TDataStdExtStringList): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_ExtStringList.hxx".}
proc restore*(this: var TDataStdExtStringList; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_ExtStringList.hxx".}
proc newEmpty*(this: TDataStdExtStringList): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_ExtStringList.hxx".}
proc paste*(this: TDataStdExtStringList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_ExtStringList.hxx".}
proc dump*(this: TDataStdExtStringList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_ExtStringList.hxx".}
proc dumpJson*(this: TDataStdExtStringList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_ExtStringList.hxx".}

