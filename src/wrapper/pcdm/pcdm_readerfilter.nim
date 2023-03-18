import ../standard/standard_types
import ../tcollection/tcollection_types
import pcdm_types



##  Copyright (c) 2021 OPEN CASCADE SAS
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






proc newPCDM_ReaderFilter*(): PCDM_ReaderFilter {.cdecl, constructor,
    importcpp: "PCDM_ReaderFilter(@)", header: "PCDM_ReaderFilter.hxx".}
proc newPCDM_ReaderFilter*(theSkipped: Handle[StandardType]): PCDM_ReaderFilter {.
    cdecl, constructor, importcpp: "PCDM_ReaderFilter(@)",
    header: "PCDM_ReaderFilter.hxx".}
proc newPCDM_ReaderFilter*(theEntryToRead: TCollectionAsciiString): PCDM_ReaderFilter {.
    cdecl, constructor, importcpp: "PCDM_ReaderFilter(@)",
    header: "PCDM_ReaderFilter.hxx".}
proc newPCDM_ReaderFilter*(theAppend: PCDM_ReaderFilterAppendMode): PCDM_ReaderFilter {.
    cdecl, constructor, importcpp: "PCDM_ReaderFilter(@)",
    header: "PCDM_ReaderFilter.hxx".}
proc destroyPCDM_ReaderFilter*(this: var PCDM_ReaderFilter) {.cdecl,
    importcpp: "#.~PCDM_ReaderFilter()", header: "PCDM_ReaderFilter.hxx".}
proc addSkipped*(this: var PCDM_ReaderFilter; theSkipped: Handle[StandardType]) {.
    cdecl, importcpp: "AddSkipped", header: "PCDM_ReaderFilter.hxx".}
proc addSkipped*(this: var PCDM_ReaderFilter; theSkipped: TCollectionAsciiString) {.
    cdecl, importcpp: "AddSkipped", header: "PCDM_ReaderFilter.hxx".}
proc addRead*(this: var PCDM_ReaderFilter; theRead: Handle[StandardType]) {.cdecl,
    importcpp: "AddRead", header: "PCDM_ReaderFilter.hxx".}
proc addRead*(this: var PCDM_ReaderFilter; theRead: TCollectionAsciiString) {.cdecl,
    importcpp: "AddRead", header: "PCDM_ReaderFilter.hxx".}
proc addPath*(this: var PCDM_ReaderFilter; theEntryToRead: TCollectionAsciiString) {.
    cdecl, importcpp: "AddPath", header: "PCDM_ReaderFilter.hxx".}
proc clear*(this: var PCDM_ReaderFilter) {.cdecl, importcpp: "Clear",
                                       header: "PCDM_ReaderFilter.hxx".}
proc isPassed*(this: PCDM_ReaderFilter; theAttributeID: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "IsPassed", header: "PCDM_ReaderFilter.hxx".}
proc isPassedAttr*(this: PCDM_ReaderFilter;
                  theAttributeType: TCollectionAsciiString): bool {.noSideEffect,
    cdecl, importcpp: "IsPassedAttr", header: "PCDM_ReaderFilter.hxx".}
proc isPassed*(this: PCDM_ReaderFilter; theEntry: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsPassed", header: "PCDM_ReaderFilter.hxx".}
proc isSubPassed*(this: PCDM_ReaderFilter; theEntry: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsSubPassed", header: "PCDM_ReaderFilter.hxx".}
proc isPartTree*(this: var PCDM_ReaderFilter): bool {.cdecl, importcpp: "IsPartTree",
    header: "PCDM_ReaderFilter.hxx".}
proc mode*(this: var PCDM_ReaderFilter): var PCDM_ReaderFilterAppendMode {.cdecl,
    importcpp: "Mode", header: "PCDM_ReaderFilter.hxx".}
proc isAppendMode*(this: var PCDM_ReaderFilter): bool {.cdecl,
    importcpp: "IsAppendMode", header: "PCDM_ReaderFilter.hxx".}
proc startIteration*(this: var PCDM_ReaderFilter) {.cdecl,
    importcpp: "StartIteration", header: "PCDM_ReaderFilter.hxx".}
proc up*(this: var PCDM_ReaderFilter) {.cdecl, importcpp: "Up",
                                    header: "PCDM_ReaderFilter.hxx".}
proc down*(this: var PCDM_ReaderFilter; theTag: cint) {.cdecl, importcpp: "Down",
    header: "PCDM_ReaderFilter.hxx".}
proc isPassed*(this: PCDM_ReaderFilter): bool {.noSideEffect, cdecl,
    importcpp: "IsPassed", header: "PCDM_ReaderFilter.hxx".}
proc isSubPassed*(this: PCDM_ReaderFilter): bool {.noSideEffect, cdecl,
    importcpp: "IsSubPassed", header: "PCDM_ReaderFilter.hxx".}

