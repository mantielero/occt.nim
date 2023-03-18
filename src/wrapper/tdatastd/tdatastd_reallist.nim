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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_RealList::GetID(@)",
                           header: "TDataStd_RealList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdRealList] {.cdecl,
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdRealList] {.cdecl,
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc newTDataStdRealList*(): TDataStdRealList {.cdecl, constructor,
    importcpp: "TDataStd_RealList(@)", header: "TDataStd_RealList.hxx".}
proc isEmpty*(this: TDataStdRealList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_RealList.hxx".}
proc extent*(this: TDataStdRealList): cint {.noSideEffect, cdecl, importcpp: "Extent",
    header: "TDataStd_RealList.hxx".}
proc prepend*(this: var TDataStdRealList; value: cfloat) {.cdecl, importcpp: "Prepend",
    header: "TDataStd_RealList.hxx".}
proc append*(this: var TDataStdRealList; value: cfloat) {.cdecl, importcpp: "Append",
    header: "TDataStd_RealList.hxx".}
proc setID*(this: var TDataStdRealList; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_RealList.hxx".}
proc setID*(this: var TDataStdRealList) {.cdecl, importcpp: "SetID",
                                      header: "TDataStd_RealList.hxx".}
proc insertBefore*(this: var TDataStdRealList; value: cfloat; beforeValue: cfloat): bool {.
    cdecl, importcpp: "InsertBefore", header: "TDataStd_RealList.hxx".}
proc insertBeforeByIndex*(this: var TDataStdRealList; index: cint; beforeValue: cfloat): bool {.
    cdecl, importcpp: "InsertBeforeByIndex", header: "TDataStd_RealList.hxx".}
proc insertAfter*(this: var TDataStdRealList; value: cfloat; afterValue: cfloat): bool {.
    cdecl, importcpp: "InsertAfter", header: "TDataStd_RealList.hxx".}
proc insertAfterByIndex*(this: var TDataStdRealList; index: cint; afterValue: cfloat): bool {.
    cdecl, importcpp: "InsertAfterByIndex", header: "TDataStd_RealList.hxx".}
proc remove*(this: var TDataStdRealList; value: cfloat): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_RealList.hxx".}
proc removeByIndex*(this: var TDataStdRealList; index: cint): bool {.cdecl,
    importcpp: "RemoveByIndex", header: "TDataStd_RealList.hxx".}
proc clear*(this: var TDataStdRealList) {.cdecl, importcpp: "Clear",
                                      header: "TDataStd_RealList.hxx".}
proc first*(this: TDataStdRealList): cfloat {.noSideEffect, cdecl, importcpp: "First",
    header: "TDataStd_RealList.hxx".}
proc last*(this: TDataStdRealList): cfloat {.noSideEffect, cdecl, importcpp: "Last",
    header: "TDataStd_RealList.hxx".}
proc list*(this: TDataStdRealList): TColStdListOfReal {.noSideEffect, cdecl,
    importcpp: "List", header: "TDataStd_RealList.hxx".}
proc id*(this: TDataStdRealList): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_RealList.hxx".}
proc restore*(this: var TDataStdRealList; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_RealList.hxx".}
proc newEmpty*(this: TDataStdRealList): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_RealList.hxx".}
proc paste*(this: TDataStdRealList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_RealList.hxx".}
proc dump*(this: TDataStdRealList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_RealList.hxx".}
proc dumpJson*(this: TDataStdRealList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_RealList.hxx".}

