import ../tcolstd/tcolstd_types
#import ../stepcafcontrol/stepcafcontrol_types
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_IntegerList::GetID(@)",
                           header: "TDataStd_IntegerList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdIntegerList] {.cdecl,
    importcpp: "TDataStd_IntegerList::Set(@)", header: "TDataStd_IntegerList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdIntegerList] {.
    cdecl, importcpp: "TDataStd_IntegerList::Set(@)",
    header: "TDataStd_IntegerList.hxx".}
proc newTDataStdIntegerList*(): TDataStdIntegerList {.cdecl, constructor,
    importcpp: "TDataStd_IntegerList(@)", header: "TDataStd_IntegerList.hxx".}
proc isEmpty*(this: TDataStdIntegerList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_IntegerList.hxx".}
proc extent*(this: TDataStdIntegerList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TDataStd_IntegerList.hxx".}
proc prepend*(this: var TDataStdIntegerList; value: cint) {.cdecl,
    importcpp: "Prepend", header: "TDataStd_IntegerList.hxx".}
proc append*(this: var TDataStdIntegerList; value: cint) {.cdecl, importcpp: "Append",
    header: "TDataStd_IntegerList.hxx".}
proc setID*(this: var TDataStdIntegerList; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_IntegerList.hxx".}
proc setID*(this: var TDataStdIntegerList) {.cdecl, importcpp: "SetID",
    header: "TDataStd_IntegerList.hxx".}
proc insertBefore*(this: var TDataStdIntegerList; value: cint; beforeValue: cint): bool {.
    cdecl, importcpp: "InsertBefore", header: "TDataStd_IntegerList.hxx".}
proc insertBeforeByIndex*(this: var TDataStdIntegerList; index: cint;
                         beforeValue: cint): bool {.cdecl,
    importcpp: "InsertBeforeByIndex", header: "TDataStd_IntegerList.hxx".}
proc insertAfter*(this: var TDataStdIntegerList; value: cint; afterValue: cint): bool {.
    cdecl, importcpp: "InsertAfter", header: "TDataStd_IntegerList.hxx".}
proc insertAfterByIndex*(this: var TDataStdIntegerList; index: cint; afterValue: cint): bool {.
    cdecl, importcpp: "InsertAfterByIndex", header: "TDataStd_IntegerList.hxx".}
proc remove*(this: var TDataStdIntegerList; value: cint): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_IntegerList.hxx".}
proc removeByIndex*(this: var TDataStdIntegerList; index: cint): bool {.cdecl,
    importcpp: "RemoveByIndex", header: "TDataStd_IntegerList.hxx".}
proc clear*(this: var TDataStdIntegerList) {.cdecl, importcpp: "Clear",
    header: "TDataStd_IntegerList.hxx".}
proc first*(this: TDataStdIntegerList): cint {.noSideEffect, cdecl,
    importcpp: "First", header: "TDataStd_IntegerList.hxx".}
proc last*(this: TDataStdIntegerList): cint {.noSideEffect, cdecl, importcpp: "Last",
    header: "TDataStd_IntegerList.hxx".}
proc list*(this: TDataStdIntegerList): TColStdListOfInteger {.noSideEffect, cdecl,
    importcpp: "List", header: "TDataStd_IntegerList.hxx".}
proc id*(this: TDataStdIntegerList): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_IntegerList.hxx".}
proc restore*(this: var TDataStdIntegerList; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_IntegerList.hxx".}
proc newEmpty*(this: TDataStdIntegerList): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_IntegerList.hxx".}
proc paste*(this: TDataStdIntegerList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_IntegerList.hxx".}
proc dump*(this: TDataStdIntegerList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_IntegerList.hxx".}
proc dumpJson*(this: TDataStdIntegerList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_IntegerList.hxx".}

