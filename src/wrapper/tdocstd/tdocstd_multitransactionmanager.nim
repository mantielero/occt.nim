import tdocstd_types
import ../standard/standard_types
import ../tcollection/tcollection_types



##  Created on: 2002-11-18
##  Created by: Vladimir ANIKIN
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





proc newTDocStdMultiTransactionManager*(): TDocStdMultiTransactionManager {.cdecl,
    constructor, importcpp: "TDocStd_MultiTransactionManager(@)",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setUndoLimit*(this: var TDocStdMultiTransactionManager; theLimit: cint) {.cdecl,
    importcpp: "SetUndoLimit", header: "TDocStd_MultiTransactionManager.hxx".}
proc getUndoLimit*(this: TDocStdMultiTransactionManager): cint {.noSideEffect, cdecl,
    importcpp: "GetUndoLimit", header: "TDocStd_MultiTransactionManager.hxx".}
proc undo*(this: var TDocStdMultiTransactionManager) {.cdecl, importcpp: "Undo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc redo*(this: var TDocStdMultiTransactionManager) {.cdecl, importcpp: "Redo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc getAvailableUndos*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfApplicationDelta {.
    noSideEffect, cdecl, importcpp: "GetAvailableUndos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc getAvailableRedos*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfApplicationDelta {.
    noSideEffect, cdecl, importcpp: "GetAvailableRedos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc openCommand*(this: var TDocStdMultiTransactionManager) {.cdecl,
    importcpp: "OpenCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc abortCommand*(this: var TDocStdMultiTransactionManager) {.cdecl,
    importcpp: "AbortCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc commitCommand*(this: var TDocStdMultiTransactionManager): bool {.cdecl,
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc commitCommand*(this: var TDocStdMultiTransactionManager;
                   theName: TCollectionExtendedString): bool {.cdecl,
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc hasOpenCommand*(this: TDocStdMultiTransactionManager): bool {.noSideEffect,
    cdecl, importcpp: "HasOpenCommand",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc removeLastUndo*(this: var TDocStdMultiTransactionManager) {.cdecl,
    importcpp: "RemoveLastUndo", header: "TDocStd_MultiTransactionManager.hxx".}
proc dumpTransaction*(this: TDocStdMultiTransactionManager;
                     theOS: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "DumpTransaction", header: "TDocStd_MultiTransactionManager.hxx".}
proc addDocument*(this: var TDocStdMultiTransactionManager;
                 theDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "AddDocument", header: "TDocStd_MultiTransactionManager.hxx".}
proc removeDocument*(this: var TDocStdMultiTransactionManager;
                    theDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "RemoveDocument", header: "TDocStd_MultiTransactionManager.hxx".}
proc documents*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfDocument {.
    noSideEffect, cdecl, importcpp: "Documents",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setNestedTransactionMode*(this: var TDocStdMultiTransactionManager;
                              isAllowed: bool = true) {.cdecl,
    importcpp: "SetNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc isNestedTransactionMode*(this: TDocStdMultiTransactionManager): bool {.
    noSideEffect, cdecl, importcpp: "IsNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setModificationMode*(this: var TDocStdMultiTransactionManager;
                         theTransactionOnly: bool) {.cdecl,
    importcpp: "SetModificationMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc modificationMode*(this: TDocStdMultiTransactionManager): bool {.noSideEffect,
    cdecl, importcpp: "ModificationMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc clearUndos*(this: var TDocStdMultiTransactionManager) {.cdecl,
    importcpp: "ClearUndos", header: "TDocStd_MultiTransactionManager.hxx".}
proc clearRedos*(this: var TDocStdMultiTransactionManager) {.cdecl,
    importcpp: "ClearRedos", header: "TDocStd_MultiTransactionManager.hxx".}

