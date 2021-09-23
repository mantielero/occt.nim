##  Created on: 1997-07-30
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, CDM_ListOfReferences,
  CDM_CanCloseStatus, ../TColStd/TColStd_SequenceOfExtendedString,
  ../TCollection/TCollection_ExtendedString, ../Standard/Standard_OStream,
  CDM_ListOfDocument

discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Application"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Failure"
discard "forward decl of Standard_DomainError"
discard "forward decl of CDM_Reference"
discard "forward decl of CDM_ReferenceIterator"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Resource_Manager"
discard "forward decl of CDM_Document"
discard "forward decl of CDM_Document"
type
  Handle_CDM_Document* = handle[CDM_Document]

## ! An applicative document is an instance of a class inheriting CDM_Document.
## ! These documents have the following properties:
## ! - they can have references to other documents.
## ! - the modifications of a document are propagated to the referencing
## ! documents.
## ! - a  document can be   stored in different formats, with  or
## ! without a persistent model.
## ! - the drivers  for  storing  and retrieving documents  are
## ! plugged in when necessary.
## ! - a  document has a modification counter. This counter is
## ! incremented when the document is  modified.  When a document
## ! is stored,  the current  counter  value is memorized as the
## ! last storage  version of the   document.  A document  is
## ! considered to be  modified   when the  counter value  is
## ! different from the storage version.  Once  the document is
## ! saved  the storage  version  and the  counter  value are
## ! identical.  The document  is  now  not considered  to  be
## ! modified.
## ! - a reference is a link between two documents. A reference has two
## ! components: the "From Document" and the "To Document". When
## ! a reference is created, an identifier of the reference is generated.
## ! This identifier is unique in the scope of the From Document and
## ! is conserved during storage and retrieval. This means that the
## ! referenced document will be always accessible through this
## ! identifier.
## ! - a reference memorizes the counter value of the To Document when
## ! the reference is created. The From Document is considered to
## ! be up to date relative to the To Document when the
## ! reference counter value is equal to the To Document counter value.
## ! -  retrieval of a document  having references does not imply
## ! the retrieving of the referenced documents.

type
  CDM_Document* {.importcpp: "CDM_Document", header: "CDM_Document.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## The
                                                                                                       ## Update
                                                                                                       ## method
                                                                                                       ## will
                                                                                                       ## be
                                                                                                       ## called
                                                                                                       ## once
                                                                                                       ## for
                                                                                                       ## each
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## reference,
                                                                                                       ## but
                                                                                                       ## it
                                                                                                       ## should
                                                                                                       ## not
                                                                                                       ## perform
                                                                                                       ## any
                                                                                                       ## computation,
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## to
                                                                                                       ## avoid
                                                                                                       ## multiple
                                                                                                       ## computation
                                                                                                       ## of
                                                                                                       ## a
                                                                                                       ## same
                                                                                                       ## document.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## the
                                                                                                       ## manager
                                                                                                       ## returned
                                                                                                       ## by
                                                                                                       ## this
                                                                                                       ## method
                                                                                                       ## will
                                                                                                       ## be
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## used
                                                                                                       ## to
                                                                                                       ## search
                                                                                                       ## for
                                                                                                       ## the
                                                                                                       ## following
                                                                                                       ## resource
                                                                                                       ## items.


proc Update*(this: var CDM_Document; aToDocument: handle[CDM_Document];
            aReferenceIdentifier: Standard_Integer;
            aModifContext: Standard_Address) {.importcpp: "Update",
    header: "CDM_Document.hxx".}
proc Update*(this: var CDM_Document; ErrorString: var TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Update", header: "CDM_Document.hxx".}
proc StorageFormat*(this: CDM_Document): TCollection_ExtendedString {.noSideEffect,
    importcpp: "StorageFormat", header: "CDM_Document.hxx".}
proc Extensions*(this: CDM_Document;
                Extensions: var TColStd_SequenceOfExtendedString) {.noSideEffect,
    importcpp: "Extensions", header: "CDM_Document.hxx".}
proc GetAlternativeDocument*(this: var CDM_Document;
                            aFormat: TCollection_ExtendedString;
                            anAlternativeDocument: var handle[CDM_Document]): Standard_Boolean {.
    importcpp: "GetAlternativeDocument", header: "CDM_Document.hxx".}
proc CreateReference*(this: var CDM_Document; anOtherDocument: handle[CDM_Document]): Standard_Integer {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc RemoveReference*(this: var CDM_Document; aReferenceIdentifier: Standard_Integer) {.
    importcpp: "RemoveReference", header: "CDM_Document.hxx".}
proc RemoveAllReferences*(this: var CDM_Document) {.
    importcpp: "RemoveAllReferences", header: "CDM_Document.hxx".}
proc Document*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): handle[
    CDM_Document] {.noSideEffect, importcpp: "Document", header: "CDM_Document.hxx".}
proc IsInSession*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsInSession", header: "CDM_Document.hxx".}
proc IsStored*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsStored", header: "CDM_Document.hxx".}
proc Name*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): TCollection_ExtendedString {.
    noSideEffect, importcpp: "Name", header: "CDM_Document.hxx".}
proc UpdateFromDocuments*(this: CDM_Document; aModifContext: Standard_Address) {.
    noSideEffect, importcpp: "UpdateFromDocuments", header: "CDM_Document.hxx".}
proc ToReferencesNumber*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "ToReferencesNumber", header: "CDM_Document.hxx".}
proc FromReferencesNumber*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "FromReferencesNumber", header: "CDM_Document.hxx".}
proc ShallowReferences*(this: CDM_Document; aDocument: handle[CDM_Document]): Standard_Boolean {.
    noSideEffect, importcpp: "ShallowReferences", header: "CDM_Document.hxx".}
proc DeepReferences*(this: CDM_Document; aDocument: handle[CDM_Document]): Standard_Boolean {.
    noSideEffect, importcpp: "DeepReferences", header: "CDM_Document.hxx".}
proc CopyReference*(this: var CDM_Document; aFromDocument: handle[CDM_Document];
                   aReferenceIdentifier: Standard_Integer): Standard_Integer {.
    importcpp: "CopyReference", header: "CDM_Document.hxx".}
proc IsReadOnly*(this: CDM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsReadOnly", header: "CDM_Document.hxx".}
proc IsReadOnly*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsReadOnly", header: "CDM_Document.hxx".}
proc SetIsReadOnly*(this: var CDM_Document) {.importcpp: "SetIsReadOnly",
    header: "CDM_Document.hxx".}
proc UnsetIsReadOnly*(this: var CDM_Document) {.importcpp: "UnsetIsReadOnly",
    header: "CDM_Document.hxx".}
proc Modify*(this: var CDM_Document) {.importcpp: "Modify", header: "CDM_Document.hxx".}
proc Modifications*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "Modifications", header: "CDM_Document.hxx".}
proc UnModify*(this: var CDM_Document) {.importcpp: "UnModify",
                                     header: "CDM_Document.hxx".}
proc IsUpToDate*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsUpToDate", header: "CDM_Document.hxx".}
proc SetIsUpToDate*(this: var CDM_Document; aReferenceIdentifier: Standard_Integer) {.
    importcpp: "SetIsUpToDate", header: "CDM_Document.hxx".}
proc SetComment*(this: var CDM_Document; aComment: TCollection_ExtendedString) {.
    importcpp: "SetComment", header: "CDM_Document.hxx".}
proc AddComment*(this: var CDM_Document; aComment: TCollection_ExtendedString) {.
    importcpp: "AddComment", header: "CDM_Document.hxx".}
proc SetComments*(this: var CDM_Document;
                 aComments: TColStd_SequenceOfExtendedString) {.
    importcpp: "SetComments", header: "CDM_Document.hxx".}
proc Comments*(this: CDM_Document; aComments: var TColStd_SequenceOfExtendedString) {.
    noSideEffect, importcpp: "Comments", header: "CDM_Document.hxx".}
proc Comment*(this: CDM_Document): Standard_ExtString {.noSideEffect,
    importcpp: "Comment", header: "CDM_Document.hxx".}
proc IsStored*(this: CDM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsStored", header: "CDM_Document.hxx".}
proc StorageVersion*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "StorageVersion", header: "CDM_Document.hxx".}
proc SetMetaData*(this: var CDM_Document; aMetaData: handle[CDM_MetaData]) {.
    importcpp: "SetMetaData", header: "CDM_Document.hxx".}
proc UnsetIsStored*(this: var CDM_Document) {.importcpp: "UnsetIsStored",
    header: "CDM_Document.hxx".}
proc MetaData*(this: CDM_Document): handle[CDM_MetaData] {.noSideEffect,
    importcpp: "MetaData", header: "CDM_Document.hxx".}
proc Folder*(this: CDM_Document): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Folder", header: "CDM_Document.hxx".}
proc SetRequestedFolder*(this: var CDM_Document; aFolder: TCollection_ExtendedString) {.
    importcpp: "SetRequestedFolder", header: "CDM_Document.hxx".}
proc RequestedFolder*(this: CDM_Document): TCollection_ExtendedString {.
    noSideEffect, importcpp: "RequestedFolder", header: "CDM_Document.hxx".}
proc HasRequestedFolder*(this: CDM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "HasRequestedFolder", header: "CDM_Document.hxx".}
proc SetRequestedName*(this: var CDM_Document; aName: TCollection_ExtendedString) {.
    importcpp: "SetRequestedName", header: "CDM_Document.hxx".}
proc RequestedName*(this: var CDM_Document): TCollection_ExtendedString {.
    importcpp: "RequestedName", header: "CDM_Document.hxx".}
proc SetRequestedPreviousVersion*(this: var CDM_Document;
                                 aPreviousVersion: TCollection_ExtendedString) {.
    importcpp: "SetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc UnsetRequestedPreviousVersion*(this: var CDM_Document) {.
    importcpp: "UnsetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc HasRequestedPreviousVersion*(this: CDM_Document): Standard_Boolean {.
    noSideEffect, importcpp: "HasRequestedPreviousVersion",
    header: "CDM_Document.hxx".}
proc RequestedPreviousVersion*(this: CDM_Document): TCollection_ExtendedString {.
    noSideEffect, importcpp: "RequestedPreviousVersion", header: "CDM_Document.hxx".}
proc SetRequestedComment*(this: var CDM_Document;
                         aComment: TCollection_ExtendedString) {.
    importcpp: "SetRequestedComment", header: "CDM_Document.hxx".}
proc RequestedComment*(this: CDM_Document): TCollection_ExtendedString {.
    noSideEffect, importcpp: "RequestedComment", header: "CDM_Document.hxx".}
proc LoadResources*(this: var CDM_Document) {.importcpp: "LoadResources",
    header: "CDM_Document.hxx".}
proc FindFileExtension*(this: var CDM_Document): Standard_Boolean {.
    importcpp: "FindFileExtension", header: "CDM_Document.hxx".}
proc FileExtension*(this: var CDM_Document): TCollection_ExtendedString {.
    importcpp: "FileExtension", header: "CDM_Document.hxx".}
proc FindDescription*(this: var CDM_Document): Standard_Boolean {.
    importcpp: "FindDescription", header: "CDM_Document.hxx".}
proc Description*(this: var CDM_Document): TCollection_ExtendedString {.
    importcpp: "Description", header: "CDM_Document.hxx".}
proc IsModified*(this: CDM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsModified", header: "CDM_Document.hxx".}
proc Print*(this: CDM_Document; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "CDM_Document.hxx".}
proc `<<`*(this: var CDM_Document; anOStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "(# << #)", header: "CDM_Document.hxx".}
proc IsOpened*(this: CDM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpened", header: "CDM_Document.hxx".}
proc Open*(this: var CDM_Document; anApplication: handle[CDM_Application]) {.
    importcpp: "Open", header: "CDM_Document.hxx".}
proc CanClose*(this: CDM_Document): CDM_CanCloseStatus {.noSideEffect,
    importcpp: "CanClose", header: "CDM_Document.hxx".}
proc Close*(this: var CDM_Document) {.importcpp: "Close", header: "CDM_Document.hxx".}
proc Application*(this: CDM_Document): handle[CDM_Application] {.noSideEffect,
    importcpp: "Application", header: "CDM_Document.hxx".}
proc CanCloseReference*(this: CDM_Document; aDocument: handle[CDM_Document];
                       aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "CanCloseReference", header: "CDM_Document.hxx".}
proc CloseReference*(this: var CDM_Document; aDocument: handle[CDM_Document];
                    aReferenceIdentifier: Standard_Integer) {.
    importcpp: "CloseReference", header: "CDM_Document.hxx".}
proc IsOpened*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpened", header: "CDM_Document.hxx".}
proc CreateReference*(this: var CDM_Document; aMetaData: handle[CDM_MetaData];
                     aReferenceIdentifier: Standard_Integer;
                     anApplication: handle[CDM_Application];
                     aToDocumentVersion: Standard_Integer;
                     UseStorageConfiguration: Standard_Boolean) {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc CreateReference*(this: var CDM_Document; aMetaData: handle[CDM_MetaData];
                     anApplication: handle[CDM_Application];
                     aDocumentVersion: Standard_Integer;
                     UseStorageConfiguration: Standard_Boolean): Standard_Integer {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc ReferenceCounter*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "ReferenceCounter", header: "CDM_Document.hxx".}
proc Update*(this: var CDM_Document) {.importcpp: "Update", header: "CDM_Document.hxx".}
proc Reference*(this: CDM_Document; aReferenceIdentifier: Standard_Integer): handle[
    CDM_Reference] {.noSideEffect, importcpp: "Reference",
                    header: "CDM_Document.hxx".}
proc SetModifications*(this: var CDM_Document; Modifications: Standard_Integer) {.
    importcpp: "SetModifications", header: "CDM_Document.hxx".}
proc SetReferenceCounter*(this: var CDM_Document;
                         aReferenceCounter: Standard_Integer) {.
    importcpp: "SetReferenceCounter", header: "CDM_Document.hxx".}
proc StorageFormatVersion*(this: CDM_Document): Standard_Integer {.noSideEffect,
    importcpp: "StorageFormatVersion", header: "CDM_Document.hxx".}
proc ChangeStorageFormatVersion*(this: var CDM_Document;
                                theVersion: Standard_Integer) {.
    importcpp: "ChangeStorageFormatVersion", header: "CDM_Document.hxx".}
proc DumpJson*(this: CDM_Document; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_Document.hxx".}
type
  CDM_Documentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDM_Document::get_type_name(@)",
                              header: "CDM_Document.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDM_Document::get_type_descriptor(@)", header: "CDM_Document.hxx".}
proc DynamicType*(this: CDM_Document): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Document.hxx".}