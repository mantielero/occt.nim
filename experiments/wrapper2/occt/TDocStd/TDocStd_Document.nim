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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_ExtendedString, ../Standard/Standard_Integer,
  ../TDF/TDF_Transaction, ../TDF/TDF_DeltaList, ../Standard/Standard_Boolean,
  ../CDM/CDM_Document, ../TDF/TDF_LabelMap, ../Standard/Standard_Address

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
  Handle_TDocStd_Document* = handle[TDocStd_Document]

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
  TDocStd_Document* {.importcpp: "TDocStd_Document",
                     header: "TDocStd_Document.hxx", bycopy.} = object of CDM_Document ##
                                                                                ## !
                                                                                ## Will
                                                                                ## Abort
                                                                                ## any
                                                                                ## execution,
                                                                                ## clear
                                                                                ## fields
                                                                                ##
                                                                                ## !
                                                                                ## returns
                                                                                ## the
                                                                                ## document
                                                                                ## which
                                                                                ## contains
                                                                                ## <L>.
                                                                                ## raises
                                                                                ## an
                                                                                ##
                                                                                ## !
                                                                                ## exception
                                                                                ## if
                                                                                ## the
                                                                                ## document
                                                                                ## is
                                                                                ## not
                                                                                ## found.
                                                                                ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## Standard_True
                                                                                ## done
                                                                                ##
                                                                                ## !
                                                                                ## Appends
                                                                                ## delta
                                                                                ## to
                                                                                ## the
                                                                                ## first
                                                                                ## delta
                                                                                ## in
                                                                                ## the
                                                                                ## myUndoFILO
                                                                                ##
                                                                                ## !
                                                                                ## private
                                                                                ## methods
                                                                                ##
                                                                                ## !
                                                                                ## ===============


proc Get*(L: TDF_Label): handle[TDocStd_Document] {.
    importcpp: "TDocStd_Document::Get(@)", header: "TDocStd_Document.hxx".}
proc constructTDocStd_Document*(astorageformat: TCollection_ExtendedString): TDocStd_Document {.
    constructor, importcpp: "TDocStd_Document(@)", header: "TDocStd_Document.hxx".}
proc IsSaved*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsSaved", header: "TDocStd_Document.hxx".}
proc IsChanged*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsChanged", header: "TDocStd_Document.hxx".}
proc SetSaved*(this: var TDocStd_Document) {.importcpp: "SetSaved",
    header: "TDocStd_Document.hxx".}
proc SetSavedTime*(this: var TDocStd_Document; theTime: Standard_Integer) {.
    importcpp: "SetSavedTime", header: "TDocStd_Document.hxx".}
proc GetSavedTime*(this: TDocStd_Document): Standard_Integer {.noSideEffect,
    importcpp: "GetSavedTime", header: "TDocStd_Document.hxx".}
proc GetName*(this: TDocStd_Document): TCollection_ExtendedString {.noSideEffect,
    importcpp: "GetName", header: "TDocStd_Document.hxx".}
proc GetPath*(this: TDocStd_Document): TCollection_ExtendedString {.noSideEffect,
    importcpp: "GetPath", header: "TDocStd_Document.hxx".}
proc SetData*(this: var TDocStd_Document; data: handle[TDF_Data]) {.
    importcpp: "SetData", header: "TDocStd_Document.hxx".}
proc GetData*(this: TDocStd_Document): handle[TDF_Data] {.noSideEffect,
    importcpp: "GetData", header: "TDocStd_Document.hxx".}
proc Main*(this: TDocStd_Document): TDF_Label {.noSideEffect, importcpp: "Main",
    header: "TDocStd_Document.hxx".}
proc IsEmpty*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDocStd_Document.hxx".}
proc IsValid*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "TDocStd_Document.hxx".}
proc SetModified*(this: var TDocStd_Document; L: TDF_Label) {.
    importcpp: "SetModified", header: "TDocStd_Document.hxx".}
proc PurgeModified*(this: var TDocStd_Document) {.importcpp: "PurgeModified",
    header: "TDocStd_Document.hxx".}
proc GetModified*(this: TDocStd_Document): TDF_LabelMap {.noSideEffect,
    importcpp: "GetModified", header: "TDocStd_Document.hxx".}
proc NewCommand*(this: var TDocStd_Document) {.importcpp: "NewCommand",
    header: "TDocStd_Document.hxx".}
proc HasOpenCommand*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "HasOpenCommand", header: "TDocStd_Document.hxx".}
proc OpenCommand*(this: var TDocStd_Document) {.importcpp: "OpenCommand",
    header: "TDocStd_Document.hxx".}
proc CommitCommand*(this: var TDocStd_Document): Standard_Boolean {.
    importcpp: "CommitCommand", header: "TDocStd_Document.hxx".}
proc AbortCommand*(this: var TDocStd_Document) {.importcpp: "AbortCommand",
    header: "TDocStd_Document.hxx".}
proc GetUndoLimit*(this: TDocStd_Document): Standard_Integer {.noSideEffect,
    importcpp: "GetUndoLimit", header: "TDocStd_Document.hxx".}
proc SetUndoLimit*(this: var TDocStd_Document; L: Standard_Integer) {.
    importcpp: "SetUndoLimit", header: "TDocStd_Document.hxx".}
proc ClearUndos*(this: var TDocStd_Document) {.importcpp: "ClearUndos",
    header: "TDocStd_Document.hxx".}
proc ClearRedos*(this: var TDocStd_Document) {.importcpp: "ClearRedos",
    header: "TDocStd_Document.hxx".}
proc GetAvailableUndos*(this: TDocStd_Document): Standard_Integer {.noSideEffect,
    importcpp: "GetAvailableUndos", header: "TDocStd_Document.hxx".}
proc Undo*(this: var TDocStd_Document): Standard_Boolean {.importcpp: "Undo",
    header: "TDocStd_Document.hxx".}
proc GetAvailableRedos*(this: TDocStd_Document): Standard_Integer {.noSideEffect,
    importcpp: "GetAvailableRedos", header: "TDocStd_Document.hxx".}
proc Redo*(this: var TDocStd_Document): Standard_Boolean {.importcpp: "Redo",
    header: "TDocStd_Document.hxx".}
proc GetUndos*(this: TDocStd_Document): TDF_DeltaList {.noSideEffect,
    importcpp: "GetUndos", header: "TDocStd_Document.hxx".}
proc GetRedos*(this: TDocStd_Document): TDF_DeltaList {.noSideEffect,
    importcpp: "GetRedos", header: "TDocStd_Document.hxx".}
proc RemoveFirstUndo*(this: var TDocStd_Document) {.importcpp: "RemoveFirstUndo",
    header: "TDocStd_Document.hxx".}
proc InitDeltaCompaction*(this: var TDocStd_Document): Standard_Boolean {.
    importcpp: "InitDeltaCompaction", header: "TDocStd_Document.hxx".}
proc PerformDeltaCompaction*(this: var TDocStd_Document): Standard_Boolean {.
    importcpp: "PerformDeltaCompaction", header: "TDocStd_Document.hxx".}
proc UpdateReferences*(this: var TDocStd_Document;
                      aDocEntry: TCollection_AsciiString) {.
    importcpp: "UpdateReferences", header: "TDocStd_Document.hxx".}
proc Recompute*(this: var TDocStd_Document) {.importcpp: "Recompute",
    header: "TDocStd_Document.hxx".}
proc Update*(this: var TDocStd_Document; aToDocument: handle[CDM_Document];
            aReferenceIdentifier: Standard_Integer;
            aModifContext: Standard_Address) {.importcpp: "Update",
    header: "TDocStd_Document.hxx".}
proc StorageFormat*(this: TDocStd_Document): TCollection_ExtendedString {.
    noSideEffect, importcpp: "StorageFormat", header: "TDocStd_Document.hxx".}
proc SetEmptyLabelsSavingMode*(this: var TDocStd_Document;
                              isAllowed: Standard_Boolean) {.
    importcpp: "SetEmptyLabelsSavingMode", header: "TDocStd_Document.hxx".}
proc EmptyLabelsSavingMode*(this: TDocStd_Document): Standard_Boolean {.
    noSideEffect, importcpp: "EmptyLabelsSavingMode",
    header: "TDocStd_Document.hxx".}
proc ChangeStorageFormat*(this: var TDocStd_Document;
                         newStorageFormat: TCollection_ExtendedString) {.
    importcpp: "ChangeStorageFormat", header: "TDocStd_Document.hxx".}
proc SetNestedTransactionMode*(this: var TDocStd_Document;
                              isAllowed: Standard_Boolean = Standard_True) {.
    importcpp: "SetNestedTransactionMode", header: "TDocStd_Document.hxx".}
proc IsNestedTransactionMode*(this: TDocStd_Document): Standard_Boolean {.
    noSideEffect, importcpp: "IsNestedTransactionMode",
    header: "TDocStd_Document.hxx".}
proc SetModificationMode*(this: var TDocStd_Document;
                         theTransactionOnly: Standard_Boolean) {.
    importcpp: "SetModificationMode", header: "TDocStd_Document.hxx".}
proc ModificationMode*(this: TDocStd_Document): Standard_Boolean {.noSideEffect,
    importcpp: "ModificationMode", header: "TDocStd_Document.hxx".}
proc BeforeClose*(this: var TDocStd_Document) {.importcpp: "BeforeClose",
    header: "TDocStd_Document.hxx".}
proc DumpJson*(this: TDocStd_Document; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDocStd_Document.hxx".}
type
  TDocStd_Documentbase_type* = CDM_Document

proc get_type_name*(): cstring {.importcpp: "TDocStd_Document::get_type_name(@)",
                              header: "TDocStd_Document.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_Document::get_type_descriptor(@)",
    header: "TDocStd_Document.hxx".}
proc DynamicType*(this: TDocStd_Document): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Document.hxx".}