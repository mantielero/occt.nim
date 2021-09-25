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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDocStd_MultiTransactionManager"
discard "forward decl of TDocStd_MultiTransactionManager"
type
  HandleTDocStdMultiTransactionManager* = Handle[TDocStdMultiTransactionManager]

## ! Class for synchronization of transactions within multiple documents.
## ! Each transaction of this class involvess one transaction in each modified document.
## !
## ! The documents to be synchronized should be added explicitly to
## ! the manager; then its interface is uesd to ensure that all transactions
## ! (Open/Commit, Undo/Redo) are performed synchronously in all managed documents.
## !
## ! The current implementation does not support nested transactions
## ! on multitransaction manager level. It only sets the flag enabling
## ! or disabling nested transactions in all its documents, so that
## ! a nested transaction can be opened for each particular document
## ! with TDocStd_Document class interface.
## !
## ! NOTE: When you invoke CommitTransaction of multi transaction
## ! manager, all nested transaction of its documents will be closed (commited).

type
  TDocStdMultiTransactionManager* {.importcpp: "TDocStd_MultiTransactionManager", header: "TDocStd_MultiTransactionManager.hxx",
                                   bycopy.} = object of StandardTransient ## ! Constructor


proc constructTDocStdMultiTransactionManager*(): TDocStdMultiTransactionManager {.
    constructor, importcpp: "TDocStd_MultiTransactionManager(@)",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setUndoLimit*(this: var TDocStdMultiTransactionManager; theLimit: int) {.
    importcpp: "SetUndoLimit", header: "TDocStd_MultiTransactionManager.hxx".}
proc getUndoLimit*(this: TDocStdMultiTransactionManager): int {.noSideEffect,
    importcpp: "GetUndoLimit", header: "TDocStd_MultiTransactionManager.hxx".}
proc undo*(this: var TDocStdMultiTransactionManager) {.importcpp: "Undo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc redo*(this: var TDocStdMultiTransactionManager) {.importcpp: "Redo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc getAvailableUndos*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfApplicationDelta {.
    noSideEffect, importcpp: "GetAvailableUndos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc getAvailableRedos*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfApplicationDelta {.
    noSideEffect, importcpp: "GetAvailableRedos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc openCommand*(this: var TDocStdMultiTransactionManager) {.
    importcpp: "OpenCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc abortCommand*(this: var TDocStdMultiTransactionManager) {.
    importcpp: "AbortCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc commitCommand*(this: var TDocStdMultiTransactionManager): bool {.
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc commitCommand*(this: var TDocStdMultiTransactionManager;
                   theName: TCollectionExtendedString): bool {.
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc hasOpenCommand*(this: TDocStdMultiTransactionManager): bool {.noSideEffect,
    importcpp: "HasOpenCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc removeLastUndo*(this: var TDocStdMultiTransactionManager) {.
    importcpp: "RemoveLastUndo", header: "TDocStd_MultiTransactionManager.hxx".}
proc dumpTransaction*(this: TDocStdMultiTransactionManager;
                     theOS: var StandardOStream) {.noSideEffect,
    importcpp: "DumpTransaction", header: "TDocStd_MultiTransactionManager.hxx".}
proc addDocument*(this: var TDocStdMultiTransactionManager;
                 theDoc: Handle[TDocStdDocument]) {.importcpp: "AddDocument",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc removeDocument*(this: var TDocStdMultiTransactionManager;
                    theDoc: Handle[TDocStdDocument]) {.
    importcpp: "RemoveDocument", header: "TDocStd_MultiTransactionManager.hxx".}
proc documents*(this: TDocStdMultiTransactionManager): TDocStdSequenceOfDocument {.
    noSideEffect, importcpp: "Documents",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setNestedTransactionMode*(this: var TDocStdMultiTransactionManager;
                              isAllowed: bool = true) {.
    importcpp: "SetNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc isNestedTransactionMode*(this: TDocStdMultiTransactionManager): bool {.
    noSideEffect, importcpp: "IsNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc setModificationMode*(this: var TDocStdMultiTransactionManager;
                         theTransactionOnly: bool) {.
    importcpp: "SetModificationMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc modificationMode*(this: TDocStdMultiTransactionManager): bool {.noSideEffect,
    importcpp: "ModificationMode", header: "TDocStd_MultiTransactionManager.hxx".}
proc clearUndos*(this: var TDocStdMultiTransactionManager) {.
    importcpp: "ClearUndos", header: "TDocStd_MultiTransactionManager.hxx".}
proc clearRedos*(this: var TDocStdMultiTransactionManager) {.
    importcpp: "ClearRedos", header: "TDocStd_MultiTransactionManager.hxx".}
type
  TDocStdMultiTransactionManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDocStd_MultiTransactionManager::get_type_name(@)",
                            header: "TDocStd_MultiTransactionManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_MultiTransactionManager::get_type_descriptor(@)",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc dynamicType*(this: TDocStdMultiTransactionManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDocStd_MultiTransactionManager.hxx".}
