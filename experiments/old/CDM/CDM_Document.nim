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
  HandleC1C1* = Handle[CDM_Document]

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
  CDM_Document* {.importcpp: "CDM_Document", header: "CDM_Document.hxx", bycopy.} = object of StandardTransient ##
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


proc update*(this: var CDM_Document; aToDocument: Handle[CDM_Document];
            aReferenceIdentifier: cint; aModifContext: StandardAddress) {.
    importcpp: "Update", header: "CDM_Document.hxx".}
proc update*(this: var CDM_Document; errorString: var TCollectionExtendedString): bool {.
    importcpp: "Update", header: "CDM_Document.hxx".}
proc storageFormat*(this: CDM_Document): TCollectionExtendedString {.noSideEffect,
    importcpp: "StorageFormat", header: "CDM_Document.hxx".}
proc extensions*(this: CDM_Document;
                extensions: var TColStdSequenceOfExtendedString) {.noSideEffect,
    importcpp: "Extensions", header: "CDM_Document.hxx".}
proc getAlternativeDocument*(this: var CDM_Document;
                            aFormat: TCollectionExtendedString;
                            anAlternativeDocument: var Handle[CDM_Document]): bool {.
    importcpp: "GetAlternativeDocument", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; anOtherDocument: Handle[CDM_Document]): cint {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc removeReference*(this: var CDM_Document; aReferenceIdentifier: cint) {.
    importcpp: "RemoveReference", header: "CDM_Document.hxx".}
proc removeAllReferences*(this: var CDM_Document) {.
    importcpp: "RemoveAllReferences", header: "CDM_Document.hxx".}
proc document*(this: CDM_Document; aReferenceIdentifier: cint): Handle[CDM_Document] {.
    noSideEffect, importcpp: "Document", header: "CDM_Document.hxx".}
proc isInSession*(this: CDM_Document; aReferenceIdentifier: cint): bool {.
    noSideEffect, importcpp: "IsInSession", header: "CDM_Document.hxx".}
proc isStored*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    importcpp: "IsStored", header: "CDM_Document.hxx".}
proc name*(this: CDM_Document; aReferenceIdentifier: cint): TCollectionExtendedString {.
    noSideEffect, importcpp: "Name", header: "CDM_Document.hxx".}
proc updateFromDocuments*(this: CDM_Document; aModifContext: StandardAddress) {.
    noSideEffect, importcpp: "UpdateFromDocuments", header: "CDM_Document.hxx".}
proc toReferencesNumber*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "ToReferencesNumber", header: "CDM_Document.hxx".}
proc fromReferencesNumber*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "FromReferencesNumber", header: "CDM_Document.hxx".}
proc shallowReferences*(this: CDM_Document; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, importcpp: "ShallowReferences", header: "CDM_Document.hxx".}
proc deepReferences*(this: CDM_Document; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, importcpp: "DeepReferences", header: "CDM_Document.hxx".}
proc copyReference*(this: var CDM_Document; aFromDocument: Handle[CDM_Document];
                   aReferenceIdentifier: cint): cint {.importcpp: "CopyReference",
    header: "CDM_Document.hxx".}
proc isReadOnly*(this: CDM_Document): bool {.noSideEffect, importcpp: "IsReadOnly",
    header: "CDM_Document.hxx".}
proc isReadOnly*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    importcpp: "IsReadOnly", header: "CDM_Document.hxx".}
proc setIsReadOnly*(this: var CDM_Document) {.importcpp: "SetIsReadOnly",
    header: "CDM_Document.hxx".}
proc unsetIsReadOnly*(this: var CDM_Document) {.importcpp: "UnsetIsReadOnly",
    header: "CDM_Document.hxx".}
proc modify*(this: var CDM_Document) {.importcpp: "Modify", header: "CDM_Document.hxx".}
proc modifications*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "Modifications", header: "CDM_Document.hxx".}
proc unModify*(this: var CDM_Document) {.importcpp: "UnModify",
                                     header: "CDM_Document.hxx".}
proc isUpToDate*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    importcpp: "IsUpToDate", header: "CDM_Document.hxx".}
proc setIsUpToDate*(this: var CDM_Document; aReferenceIdentifier: cint) {.
    importcpp: "SetIsUpToDate", header: "CDM_Document.hxx".}
proc setComment*(this: var CDM_Document; aComment: TCollectionExtendedString) {.
    importcpp: "SetComment", header: "CDM_Document.hxx".}
proc addComment*(this: var CDM_Document; aComment: TCollectionExtendedString) {.
    importcpp: "AddComment", header: "CDM_Document.hxx".}
proc setComments*(this: var CDM_Document; aComments: TColStdSequenceOfExtendedString) {.
    importcpp: "SetComments", header: "CDM_Document.hxx".}
proc comments*(this: CDM_Document; aComments: var TColStdSequenceOfExtendedString) {.
    noSideEffect, importcpp: "Comments", header: "CDM_Document.hxx".}
proc comment*(this: CDM_Document): StandardExtString {.noSideEffect,
    importcpp: "Comment", header: "CDM_Document.hxx".}
proc isStored*(this: CDM_Document): bool {.noSideEffect, importcpp: "IsStored",
                                       header: "CDM_Document.hxx".}
proc storageVersion*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "StorageVersion", header: "CDM_Document.hxx".}
proc setMetaData*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData]) {.
    importcpp: "SetMetaData", header: "CDM_Document.hxx".}
proc unsetIsStored*(this: var CDM_Document) {.importcpp: "UnsetIsStored",
    header: "CDM_Document.hxx".}
proc metaData*(this: CDM_Document): Handle[CDM_MetaData] {.noSideEffect,
    importcpp: "MetaData", header: "CDM_Document.hxx".}
proc folder*(this: CDM_Document): TCollectionExtendedString {.noSideEffect,
    importcpp: "Folder", header: "CDM_Document.hxx".}
proc setRequestedFolder*(this: var CDM_Document; aFolder: TCollectionExtendedString) {.
    importcpp: "SetRequestedFolder", header: "CDM_Document.hxx".}
proc requestedFolder*(this: CDM_Document): TCollectionExtendedString {.noSideEffect,
    importcpp: "RequestedFolder", header: "CDM_Document.hxx".}
proc hasRequestedFolder*(this: CDM_Document): bool {.noSideEffect,
    importcpp: "HasRequestedFolder", header: "CDM_Document.hxx".}
proc setRequestedName*(this: var CDM_Document; aName: TCollectionExtendedString) {.
    importcpp: "SetRequestedName", header: "CDM_Document.hxx".}
proc requestedName*(this: var CDM_Document): TCollectionExtendedString {.
    importcpp: "RequestedName", header: "CDM_Document.hxx".}
proc setRequestedPreviousVersion*(this: var CDM_Document;
                                 aPreviousVersion: TCollectionExtendedString) {.
    importcpp: "SetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc unsetRequestedPreviousVersion*(this: var CDM_Document) {.
    importcpp: "UnsetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc hasRequestedPreviousVersion*(this: CDM_Document): bool {.noSideEffect,
    importcpp: "HasRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc requestedPreviousVersion*(this: CDM_Document): TCollectionExtendedString {.
    noSideEffect, importcpp: "RequestedPreviousVersion", header: "CDM_Document.hxx".}
proc setRequestedComment*(this: var CDM_Document;
                         aComment: TCollectionExtendedString) {.
    importcpp: "SetRequestedComment", header: "CDM_Document.hxx".}
proc requestedComment*(this: CDM_Document): TCollectionExtendedString {.
    noSideEffect, importcpp: "RequestedComment", header: "CDM_Document.hxx".}
proc loadResources*(this: var CDM_Document) {.importcpp: "LoadResources",
    header: "CDM_Document.hxx".}
proc findFileExtension*(this: var CDM_Document): bool {.
    importcpp: "FindFileExtension", header: "CDM_Document.hxx".}
proc fileExtension*(this: var CDM_Document): TCollectionExtendedString {.
    importcpp: "FileExtension", header: "CDM_Document.hxx".}
proc findDescription*(this: var CDM_Document): bool {.importcpp: "FindDescription",
    header: "CDM_Document.hxx".}
proc description*(this: var CDM_Document): TCollectionExtendedString {.
    importcpp: "Description", header: "CDM_Document.hxx".}
proc isModified*(this: CDM_Document): bool {.noSideEffect, importcpp: "IsModified",
    header: "CDM_Document.hxx".}
proc print*(this: CDM_Document; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "CDM_Document.hxx".}
proc `<<`*(this: var CDM_Document; anOStream: var StandardOStream): var StandardOStream {.
    importcpp: "(# << #)", header: "CDM_Document.hxx".}
proc isOpened*(this: CDM_Document): bool {.noSideEffect, importcpp: "IsOpened",
                                       header: "CDM_Document.hxx".}
proc open*(this: var CDM_Document; anApplication: Handle[CDM_Application]) {.
    importcpp: "Open", header: "CDM_Document.hxx".}
proc canClose*(this: CDM_Document): CDM_CanCloseStatus {.noSideEffect,
    importcpp: "CanClose", header: "CDM_Document.hxx".}
proc close*(this: var CDM_Document) {.importcpp: "Close", header: "CDM_Document.hxx".}
proc application*(this: CDM_Document): Handle[CDM_Application] {.noSideEffect,
    importcpp: "Application", header: "CDM_Document.hxx".}
proc canCloseReference*(this: CDM_Document; aDocument: Handle[CDM_Document];
                       aReferenceIdentifier: cint): bool {.noSideEffect,
    importcpp: "CanCloseReference", header: "CDM_Document.hxx".}
proc closeReference*(this: var CDM_Document; aDocument: Handle[CDM_Document];
                    aReferenceIdentifier: cint) {.importcpp: "CloseReference",
    header: "CDM_Document.hxx".}
proc isOpened*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    importcpp: "IsOpened", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData];
                     aReferenceIdentifier: cint;
                     anApplication: Handle[CDM_Application];
                     aToDocumentVersion: cint; useStorageConfiguration: bool) {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData];
                     anApplication: Handle[CDM_Application];
                     aDocumentVersion: cint; useStorageConfiguration: bool): cint {.
    importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc referenceCounter*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "ReferenceCounter", header: "CDM_Document.hxx".}
proc update*(this: var CDM_Document) {.importcpp: "Update", header: "CDM_Document.hxx".}
proc reference*(this: CDM_Document; aReferenceIdentifier: cint): Handle[CDM_Reference] {.
    noSideEffect, importcpp: "Reference", header: "CDM_Document.hxx".}
proc setModifications*(this: var CDM_Document; modifications: cint) {.
    importcpp: "SetModifications", header: "CDM_Document.hxx".}
proc setReferenceCounter*(this: var CDM_Document; aReferenceCounter: cint) {.
    importcpp: "SetReferenceCounter", header: "CDM_Document.hxx".}
proc storageFormatVersion*(this: CDM_Document): cint {.noSideEffect,
    importcpp: "StorageFormatVersion", header: "CDM_Document.hxx".}
proc changeStorageFormatVersion*(this: var CDM_Document; theVersion: cint) {.
    importcpp: "ChangeStorageFormatVersion", header: "CDM_Document.hxx".}
proc dumpJson*(this: CDM_Document; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "CDM_Document.hxx".}
type
  CDM_DocumentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDM_Document::get_type_name(@)",
                            header: "CDM_Document.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDM_Document::get_type_descriptor(@)", header: "CDM_Document.hxx".}
proc dynamicType*(this: CDM_Document): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Document.hxx".}

























