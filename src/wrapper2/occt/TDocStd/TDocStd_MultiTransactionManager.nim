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

import
  ../Standard/Standard, ../Standard/Standard_Type, TDocStd_SequenceOfDocument,
  TDocStd_SequenceOfApplicationDelta, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDocStd_MultiTransactionManager"
discard "forward decl of TDocStd_MultiTransactionManager"
type
  Handle_TDocStd_MultiTransactionManager* = handle[TDocStd_MultiTransactionManager]

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
  TDocStd_MultiTransactionManager* {.importcpp: "TDocStd_MultiTransactionManager", header: "TDocStd_MultiTransactionManager.hxx",
                                    bycopy.} = object of Standard_Transient ## !
                                                                       ## Constructor


proc constructTDocStd_MultiTransactionManager*(): TDocStd_MultiTransactionManager {.
    constructor, importcpp: "TDocStd_MultiTransactionManager(@)",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc SetUndoLimit*(this: var TDocStd_MultiTransactionManager;
                  theLimit: Standard_Integer) {.importcpp: "SetUndoLimit",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc GetUndoLimit*(this: TDocStd_MultiTransactionManager): Standard_Integer {.
    noSideEffect, importcpp: "GetUndoLimit",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc Undo*(this: var TDocStd_MultiTransactionManager) {.importcpp: "Undo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc Redo*(this: var TDocStd_MultiTransactionManager) {.importcpp: "Redo",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc GetAvailableUndos*(this: TDocStd_MultiTransactionManager): TDocStd_SequenceOfApplicationDelta {.
    noSideEffect, importcpp: "GetAvailableUndos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc GetAvailableRedos*(this: TDocStd_MultiTransactionManager): TDocStd_SequenceOfApplicationDelta {.
    noSideEffect, importcpp: "GetAvailableRedos",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc OpenCommand*(this: var TDocStd_MultiTransactionManager) {.
    importcpp: "OpenCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc AbortCommand*(this: var TDocStd_MultiTransactionManager) {.
    importcpp: "AbortCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc CommitCommand*(this: var TDocStd_MultiTransactionManager): Standard_Boolean {.
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc CommitCommand*(this: var TDocStd_MultiTransactionManager;
                   theName: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "CommitCommand", header: "TDocStd_MultiTransactionManager.hxx".}
proc HasOpenCommand*(this: TDocStd_MultiTransactionManager): Standard_Boolean {.
    noSideEffect, importcpp: "HasOpenCommand",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc RemoveLastUndo*(this: var TDocStd_MultiTransactionManager) {.
    importcpp: "RemoveLastUndo", header: "TDocStd_MultiTransactionManager.hxx".}
proc DumpTransaction*(this: TDocStd_MultiTransactionManager;
                     theOS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpTransaction", header: "TDocStd_MultiTransactionManager.hxx".}
proc AddDocument*(this: var TDocStd_MultiTransactionManager;
                 theDoc: handle[TDocStd_Document]) {.importcpp: "AddDocument",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc RemoveDocument*(this: var TDocStd_MultiTransactionManager;
                    theDoc: handle[TDocStd_Document]) {.
    importcpp: "RemoveDocument", header: "TDocStd_MultiTransactionManager.hxx".}
proc Documents*(this: TDocStd_MultiTransactionManager): TDocStd_SequenceOfDocument {.
    noSideEffect, importcpp: "Documents",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc SetNestedTransactionMode*(this: var TDocStd_MultiTransactionManager;
                              isAllowed: Standard_Boolean = Standard_True) {.
    importcpp: "SetNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc IsNestedTransactionMode*(this: TDocStd_MultiTransactionManager): Standard_Boolean {.
    noSideEffect, importcpp: "IsNestedTransactionMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc SetModificationMode*(this: var TDocStd_MultiTransactionManager;
                         theTransactionOnly: Standard_Boolean) {.
    importcpp: "SetModificationMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc ModificationMode*(this: TDocStd_MultiTransactionManager): Standard_Boolean {.
    noSideEffect, importcpp: "ModificationMode",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc ClearUndos*(this: var TDocStd_MultiTransactionManager) {.
    importcpp: "ClearUndos", header: "TDocStd_MultiTransactionManager.hxx".}
proc ClearRedos*(this: var TDocStd_MultiTransactionManager) {.
    importcpp: "ClearRedos", header: "TDocStd_MultiTransactionManager.hxx".}
type
  TDocStd_MultiTransactionManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDocStd_MultiTransactionManager::get_type_name(@)",
                              header: "TDocStd_MultiTransactionManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_MultiTransactionManager::get_type_descriptor(@)",
    header: "TDocStd_MultiTransactionManager.hxx".}
proc DynamicType*(this: TDocStd_MultiTransactionManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDocStd_MultiTransactionManager.hxx".}