import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../cdm/cdm_types


##  Created on: 1999-04-07
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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





proc get*(L: TDF_Label): Handle[TDocStdDocument] {.cdecl,
    importcpp: "TDocStd_Document::Get(@)", header: "TDocStd_Document.hxx".}
proc newTDocStdDocument*(astorageformat: TCollectionExtendedString): TDocStdDocument {.
    cdecl, constructor, importcpp: "TDocStd_Document(@)",
    header: "TDocStd_Document.hxx".}
proc isSaved*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "IsSaved", header: "TDocStd_Document.hxx".}
proc isChanged*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "IsChanged", header: "TDocStd_Document.hxx".}
proc setSaved*(this: var TDocStdDocument) {.cdecl, importcpp: "SetSaved",
                                        header: "TDocStd_Document.hxx".}
proc setSavedTime*(this: var TDocStdDocument; theTime: cint) {.cdecl,
    importcpp: "SetSavedTime", header: "TDocStd_Document.hxx".}
proc getSavedTime*(this: TDocStdDocument): cint {.noSideEffect, cdecl,
    importcpp: "GetSavedTime", header: "TDocStd_Document.hxx".}
proc getName*(this: TDocStdDocument): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "GetName", header: "TDocStd_Document.hxx".}
proc getPath*(this: TDocStdDocument): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "GetPath", header: "TDocStd_Document.hxx".}
proc setData*(this: var TDocStdDocument; data: Handle[TDF_Data]) {.cdecl,
    importcpp: "SetData", header: "TDocStd_Document.hxx".}
proc getData*(this: TDocStdDocument): Handle[TDF_Data] {.noSideEffect, cdecl,
    importcpp: "GetData", header: "TDocStd_Document.hxx".}
proc main*(this: TDocStdDocument): TDF_Label {.noSideEffect, cdecl, importcpp: "Main",
    header: "TDocStd_Document.hxx".}
proc isEmpty*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDocStd_Document.hxx".}
proc isValid*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "TDocStd_Document.hxx".}
proc setModified*(this: var TDocStdDocument; L: TDF_Label) {.cdecl,
    importcpp: "SetModified", header: "TDocStd_Document.hxx".}
proc purgeModified*(this: var TDocStdDocument) {.cdecl, importcpp: "PurgeModified",
    header: "TDocStd_Document.hxx".}
proc getModified*(this: TDocStdDocument): TDF_LabelMap {.noSideEffect, cdecl,
    importcpp: "GetModified", header: "TDocStd_Document.hxx".}
proc newCommand*(this: var TDocStdDocument) {.cdecl, importcpp: "NewCommand",
    header: "TDocStd_Document.hxx".}
proc hasOpenCommand*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "HasOpenCommand", header: "TDocStd_Document.hxx".}
proc openCommand*(this: var TDocStdDocument) {.cdecl, importcpp: "OpenCommand",
    header: "TDocStd_Document.hxx".}
proc commitCommand*(this: var TDocStdDocument): bool {.cdecl,
    importcpp: "CommitCommand", header: "TDocStd_Document.hxx".}
proc abortCommand*(this: var TDocStdDocument) {.cdecl, importcpp: "AbortCommand",
    header: "TDocStd_Document.hxx".}
proc getUndoLimit*(this: TDocStdDocument): cint {.noSideEffect, cdecl,
    importcpp: "GetUndoLimit", header: "TDocStd_Document.hxx".}
proc setUndoLimit*(this: var TDocStdDocument; L: cint) {.cdecl,
    importcpp: "SetUndoLimit", header: "TDocStd_Document.hxx".}
proc clearUndos*(this: var TDocStdDocument) {.cdecl, importcpp: "ClearUndos",
    header: "TDocStd_Document.hxx".}
proc clearRedos*(this: var TDocStdDocument) {.cdecl, importcpp: "ClearRedos",
    header: "TDocStd_Document.hxx".}
proc getAvailableUndos*(this: TDocStdDocument): cint {.noSideEffect, cdecl,
    importcpp: "GetAvailableUndos", header: "TDocStd_Document.hxx".}
proc undo*(this: var TDocStdDocument): bool {.cdecl, importcpp: "Undo",
    header: "TDocStd_Document.hxx".}
proc getAvailableRedos*(this: TDocStdDocument): cint {.noSideEffect, cdecl,
    importcpp: "GetAvailableRedos", header: "TDocStd_Document.hxx".}
proc redo*(this: var TDocStdDocument): bool {.cdecl, importcpp: "Redo",
    header: "TDocStd_Document.hxx".}
proc getUndos*(this: TDocStdDocument): TDF_DeltaList {.noSideEffect, cdecl,
    importcpp: "GetUndos", header: "TDocStd_Document.hxx".}
proc getRedos*(this: TDocStdDocument): TDF_DeltaList {.noSideEffect, cdecl,
    importcpp: "GetRedos", header: "TDocStd_Document.hxx".}
proc removeFirstUndo*(this: var TDocStdDocument) {.cdecl,
    importcpp: "RemoveFirstUndo", header: "TDocStd_Document.hxx".}
proc initDeltaCompaction*(this: var TDocStdDocument): bool {.cdecl,
    importcpp: "InitDeltaCompaction", header: "TDocStd_Document.hxx".}
proc performDeltaCompaction*(this: var TDocStdDocument): bool {.cdecl,
    importcpp: "PerformDeltaCompaction", header: "TDocStd_Document.hxx".}
proc updateReferences*(this: var TDocStdDocument; aDocEntry: TCollectionAsciiString) {.
    cdecl, importcpp: "UpdateReferences", header: "TDocStd_Document.hxx".}
proc recompute*(this: var TDocStdDocument) {.cdecl, importcpp: "Recompute",
    header: "TDocStd_Document.hxx".}
proc update*(this: var TDocStdDocument; aToDocument: Handle[CDM_Document];
            aReferenceIdentifier: cint; aModifContext: pointer) {.cdecl,
    importcpp: "Update", header: "TDocStd_Document.hxx".}
proc storageFormat*(this: TDocStdDocument): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "StorageFormat", header: "TDocStd_Document.hxx".}
proc setEmptyLabelsSavingMode*(this: var TDocStdDocument; isAllowed: bool) {.cdecl,
    importcpp: "SetEmptyLabelsSavingMode", header: "TDocStd_Document.hxx".}
proc emptyLabelsSavingMode*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "EmptyLabelsSavingMode", header: "TDocStd_Document.hxx".}
proc changeStorageFormat*(this: var TDocStdDocument;
                         newStorageFormat: TCollectionExtendedString) {.cdecl,
    importcpp: "ChangeStorageFormat", header: "TDocStd_Document.hxx".}
proc setNestedTransactionMode*(this: var TDocStdDocument; isAllowed: bool = true) {.
    cdecl, importcpp: "SetNestedTransactionMode", header: "TDocStd_Document.hxx".}
proc isNestedTransactionMode*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "IsNestedTransactionMode", header: "TDocStd_Document.hxx".}
proc setModificationMode*(this: var TDocStdDocument; theTransactionOnly: bool) {.
    cdecl, importcpp: "SetModificationMode", header: "TDocStd_Document.hxx".}
proc modificationMode*(this: TDocStdDocument): bool {.noSideEffect, cdecl,
    importcpp: "ModificationMode", header: "TDocStd_Document.hxx".}
proc beforeClose*(this: var TDocStdDocument) {.cdecl, importcpp: "BeforeClose",
    header: "TDocStd_Document.hxx".}
proc storageFormatVersion*(this: TDocStdDocument): TDocStdFormatVersion {.
    noSideEffect, cdecl, importcpp: "StorageFormatVersion",
    header: "TDocStd_Document.hxx".}
proc changeStorageFormatVersion*(this: var TDocStdDocument;
                                theVersion: TDocStdFormatVersion) {.cdecl,
    importcpp: "ChangeStorageFormatVersion", header: "TDocStd_Document.hxx".}
proc currentStorageFormatVersion*(): TDocStdFormatVersion {.cdecl,
    importcpp: "TDocStd_Document::CurrentStorageFormatVersion(@)",
    header: "TDocStd_Document.hxx".}
proc dumpJson*(this: TDocStdDocument; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDocStd_Document.hxx".}

