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

discard "forward decl of TDF_Data"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of CDM_Document"
discard "forward decl of TDocStd_CompoundDelta"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDocStd_Document"
type
  HandleC1C1* = Handle[TDocStdDocument]

## ! The contents of a TDocStd_Application, a
## ! document is a container for a data framework
## ! composed of labels and attributes. As such,
## ! TDocStd_Document is the entry point into the data framework.
## ! To gain access to the data, you create a document as follows:
## ! Handle(TDocStd_Document) MyDF = new TDocStd_Document
## ! The document also allows you to manage:
## ! -   modifications, providing Undo and Redo functions.
## ! -   command transactions.
## ! Warning: The only data saved is the framework (TDF_Data)

type
  TDocStdDocument* {.importcpp: "TDocStd_Document", header: "TDocStd_Document.hxx",
                    bycopy.} = object of CDM_Document ## ! Will Abort any execution, clear fields
                                                 ## ! returns the    document which contains <L>.  raises  an
                                                 ## ! exception if the document is not found.
                                                 ## ! Returns Standard_True done
                                                 ## ! Appends delta to the first delta in the myUndoFILO
                                                 ## ! private methods
                                                 ## ! ===============


proc get*(L: TDF_Label): Handle[TDocStdDocument] {.
    importcpp: "TDocStd_Document::Get(@)", header: "TDocStd_Document.hxx".}
proc constructTDocStdDocument*(astorageformat: TCollectionExtendedString): TDocStdDocument {.
    constructor, importcpp: "TDocStd_Document(@)", header: "TDocStd_Document.hxx".}
proc isSaved*(this: TDocStdDocument): bool {.noSideEffect, importcpp: "IsSaved",
    header: "TDocStd_Document.hxx".}
proc isChanged*(this: TDocStdDocument): bool {.noSideEffect, importcpp: "IsChanged",
    header: "TDocStd_Document.hxx".}
proc setSaved*(this: var TDocStdDocument) {.importcpp: "SetSaved",
                                        header: "TDocStd_Document.hxx".}
proc setSavedTime*(this: var TDocStdDocument; theTime: cint) {.
    importcpp: "SetSavedTime", header: "TDocStd_Document.hxx".}
proc getSavedTime*(this: TDocStdDocument): cint {.noSideEffect,
    importcpp: "GetSavedTime", header: "TDocStd_Document.hxx".}
proc getName*(this: TDocStdDocument): TCollectionExtendedString {.noSideEffect,
    importcpp: "GetName", header: "TDocStd_Document.hxx".}
proc getPath*(this: TDocStdDocument): TCollectionExtendedString {.noSideEffect,
    importcpp: "GetPath", header: "TDocStd_Document.hxx".}
proc setData*(this: var TDocStdDocument; data: Handle[TDF_Data]) {.
    importcpp: "SetData", header: "TDocStd_Document.hxx".}
proc getData*(this: TDocStdDocument): Handle[TDF_Data] {.noSideEffect,
    importcpp: "GetData", header: "TDocStd_Document.hxx".}
proc main*(this: TDocStdDocument): TDF_Label {.noSideEffect, importcpp: "Main",
    header: "TDocStd_Document.hxx".}
proc isEmpty*(this: TDocStdDocument): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TDocStd_Document.hxx".}
proc isValid*(this: TDocStdDocument): bool {.noSideEffect, importcpp: "IsValid",
    header: "TDocStd_Document.hxx".}
proc setModified*(this: var TDocStdDocument; L: TDF_Label) {.importcpp: "SetModified",
    header: "TDocStd_Document.hxx".}
proc purgeModified*(this: var TDocStdDocument) {.importcpp: "PurgeModified",
    header: "TDocStd_Document.hxx".}
proc getModified*(this: TDocStdDocument): TDF_LabelMap {.noSideEffect,
    importcpp: "GetModified", header: "TDocStd_Document.hxx".}
proc newCommand*(this: var TDocStdDocument) {.importcpp: "NewCommand",
    header: "TDocStd_Document.hxx".}
proc hasOpenCommand*(this: TDocStdDocument): bool {.noSideEffect,
    importcpp: "HasOpenCommand", header: "TDocStd_Document.hxx".}
proc openCommand*(this: var TDocStdDocument) {.importcpp: "OpenCommand",
    header: "TDocStd_Document.hxx".}
proc commitCommand*(this: var TDocStdDocument): bool {.importcpp: "CommitCommand",
    header: "TDocStd_Document.hxx".}
proc abortCommand*(this: var TDocStdDocument) {.importcpp: "AbortCommand",
    header: "TDocStd_Document.hxx".}
proc getUndoLimit*(this: TDocStdDocument): cint {.noSideEffect,
    importcpp: "GetUndoLimit", header: "TDocStd_Document.hxx".}
proc setUndoLimit*(this: var TDocStdDocument; L: cint) {.importcpp: "SetUndoLimit",
    header: "TDocStd_Document.hxx".}
proc clearUndos*(this: var TDocStdDocument) {.importcpp: "ClearUndos",
    header: "TDocStd_Document.hxx".}
proc clearRedos*(this: var TDocStdDocument) {.importcpp: "ClearRedos",
    header: "TDocStd_Document.hxx".}
proc getAvailableUndos*(this: TDocStdDocument): cint {.noSideEffect,
    importcpp: "GetAvailableUndos", header: "TDocStd_Document.hxx".}
proc undo*(this: var TDocStdDocument): bool {.importcpp: "Undo",
    header: "TDocStd_Document.hxx".}
proc getAvailableRedos*(this: TDocStdDocument): cint {.noSideEffect,
    importcpp: "GetAvailableRedos", header: "TDocStd_Document.hxx".}
proc redo*(this: var TDocStdDocument): bool {.importcpp: "Redo",
    header: "TDocStd_Document.hxx".}
proc getUndos*(this: TDocStdDocument): TDF_DeltaList {.noSideEffect,
    importcpp: "GetUndos", header: "TDocStd_Document.hxx".}
proc getRedos*(this: TDocStdDocument): TDF_DeltaList {.noSideEffect,
    importcpp: "GetRedos", header: "TDocStd_Document.hxx".}
proc removeFirstUndo*(this: var TDocStdDocument) {.importcpp: "RemoveFirstUndo",
    header: "TDocStd_Document.hxx".}
proc initDeltaCompaction*(this: var TDocStdDocument): bool {.
    importcpp: "InitDeltaCompaction", header: "TDocStd_Document.hxx".}
proc performDeltaCompaction*(this: var TDocStdDocument): bool {.
    importcpp: "PerformDeltaCompaction", header: "TDocStd_Document.hxx".}
proc updateReferences*(this: var TDocStdDocument; aDocEntry: TCollectionAsciiString) {.
    importcpp: "UpdateReferences", header: "TDocStd_Document.hxx".}
proc recompute*(this: var TDocStdDocument) {.importcpp: "Recompute",
    header: "TDocStd_Document.hxx".}
proc update*(this: var TDocStdDocument; aToDocument: Handle[CDM_Document];
            aReferenceIdentifier: cint; aModifContext: StandardAddress) {.
    importcpp: "Update", header: "TDocStd_Document.hxx".}
proc storageFormat*(this: TDocStdDocument): TCollectionExtendedString {.
    noSideEffect, importcpp: "StorageFormat", header: "TDocStd_Document.hxx".}
proc setEmptyLabelsSavingMode*(this: var TDocStdDocument; isAllowed: bool) {.
    importcpp: "SetEmptyLabelsSavingMode", header: "TDocStd_Document.hxx".}
proc emptyLabelsSavingMode*(this: TDocStdDocument): bool {.noSideEffect,
    importcpp: "EmptyLabelsSavingMode", header: "TDocStd_Document.hxx".}
proc changeStorageFormat*(this: var TDocStdDocument;
                         newStorageFormat: TCollectionExtendedString) {.
    importcpp: "ChangeStorageFormat", header: "TDocStd_Document.hxx".}
proc setNestedTransactionMode*(this: var TDocStdDocument; isAllowed: bool = true) {.
    importcpp: "SetNestedTransactionMode", header: "TDocStd_Document.hxx".}
proc isNestedTransactionMode*(this: TDocStdDocument): bool {.noSideEffect,
    importcpp: "IsNestedTransactionMode", header: "TDocStd_Document.hxx".}
proc setModificationMode*(this: var TDocStdDocument; theTransactionOnly: bool) {.
    importcpp: "SetModificationMode", header: "TDocStd_Document.hxx".}
proc modificationMode*(this: TDocStdDocument): bool {.noSideEffect,
    importcpp: "ModificationMode", header: "TDocStd_Document.hxx".}
proc beforeClose*(this: var TDocStdDocument) {.importcpp: "BeforeClose",
    header: "TDocStd_Document.hxx".}
proc dumpJson*(this: TDocStdDocument; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDocStd_Document.hxx".}
type
  TDocStdDocumentbaseType* = CDM_Document

proc getTypeName*(): cstring {.importcpp: "TDocStd_Document::get_type_name(@)",
                            header: "TDocStd_Document.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_Document::get_type_descriptor(@)",
    header: "TDocStd_Document.hxx".}
proc dynamicType*(this: TDocStdDocument): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Document.hxx".}

























