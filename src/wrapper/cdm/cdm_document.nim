import ../standard/standard_types
import ../tcollection/tcollection_types
import cdm_types
import ../tcolstd/tcolstd_types



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





proc update*(this: var CDM_Document; aToDocument: Handle[CDM_Document];
            aReferenceIdentifier: cint; aModifContext: pointer) {.cdecl,
    importcpp: "Update", header: "CDM_Document.hxx".}
proc update*(this: var CDM_Document; errorString: var TCollectionExtendedString): bool {.
    cdecl, importcpp: "Update", header: "CDM_Document.hxx".}
proc storageFormat*(this: CDM_Document): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "StorageFormat", header: "CDM_Document.hxx".}
proc extensions*(this: CDM_Document;
                extensions: var TColStdSequenceOfExtendedString) {.noSideEffect,
    cdecl, importcpp: "Extensions", header: "CDM_Document.hxx".}
proc getAlternativeDocument*(this: var CDM_Document;
                            aFormat: TCollectionExtendedString;
                            anAlternativeDocument: var Handle[CDM_Document]): bool {.
    cdecl, importcpp: "GetAlternativeDocument", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; anOtherDocument: Handle[CDM_Document]): cint {.
    cdecl, importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc removeReference*(this: var CDM_Document; aReferenceIdentifier: cint) {.cdecl,
    importcpp: "RemoveReference", header: "CDM_Document.hxx".}
proc removeAllReferences*(this: var CDM_Document) {.cdecl,
    importcpp: "RemoveAllReferences", header: "CDM_Document.hxx".}
proc document*(this: CDM_Document; aReferenceIdentifier: cint): Handle[CDM_Document] {.
    noSideEffect, cdecl, importcpp: "Document", header: "CDM_Document.hxx".}
proc isInSession*(this: CDM_Document; aReferenceIdentifier: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsInSession", header: "CDM_Document.hxx".}
proc isStored*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsStored", header: "CDM_Document.hxx".}
proc name*(this: CDM_Document; aReferenceIdentifier: cint): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "Name", header: "CDM_Document.hxx".}
proc updateFromDocuments*(this: CDM_Document; aModifContext: pointer) {.noSideEffect,
    cdecl, importcpp: "UpdateFromDocuments", header: "CDM_Document.hxx".}
proc toReferencesNumber*(this: CDM_Document): cint {.noSideEffect, cdecl,
    importcpp: "ToReferencesNumber", header: "CDM_Document.hxx".}
proc fromReferencesNumber*(this: CDM_Document): cint {.noSideEffect, cdecl,
    importcpp: "FromReferencesNumber", header: "CDM_Document.hxx".}
proc shallowReferences*(this: CDM_Document; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, cdecl, importcpp: "ShallowReferences", header: "CDM_Document.hxx".}
proc deepReferences*(this: CDM_Document; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, cdecl, importcpp: "DeepReferences", header: "CDM_Document.hxx".}
proc copyReference*(this: var CDM_Document; aFromDocument: Handle[CDM_Document];
                   aReferenceIdentifier: cint): cint {.cdecl,
    importcpp: "CopyReference", header: "CDM_Document.hxx".}
proc isReadOnly*(this: CDM_Document): bool {.noSideEffect, cdecl,
    importcpp: "IsReadOnly", header: "CDM_Document.hxx".}
proc isReadOnly*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsReadOnly", header: "CDM_Document.hxx".}
proc setIsReadOnly*(this: var CDM_Document) {.cdecl, importcpp: "SetIsReadOnly",
    header: "CDM_Document.hxx".}
proc unsetIsReadOnly*(this: var CDM_Document) {.cdecl, importcpp: "UnsetIsReadOnly",
    header: "CDM_Document.hxx".}
proc modify*(this: var CDM_Document) {.cdecl, importcpp: "Modify",
                                   header: "CDM_Document.hxx".}
proc modifications*(this: CDM_Document): cint {.noSideEffect, cdecl,
    importcpp: "Modifications", header: "CDM_Document.hxx".}
proc unModify*(this: var CDM_Document) {.cdecl, importcpp: "UnModify",
                                     header: "CDM_Document.hxx".}
proc isUpToDate*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsUpToDate", header: "CDM_Document.hxx".}
proc setIsUpToDate*(this: var CDM_Document; aReferenceIdentifier: cint) {.cdecl,
    importcpp: "SetIsUpToDate", header: "CDM_Document.hxx".}
proc setComment*(this: var CDM_Document; aComment: TCollectionExtendedString) {.cdecl,
    importcpp: "SetComment", header: "CDM_Document.hxx".}
proc addComment*(this: var CDM_Document; aComment: TCollectionExtendedString) {.cdecl,
    importcpp: "AddComment", header: "CDM_Document.hxx".}
proc setComments*(this: var CDM_Document; aComments: TColStdSequenceOfExtendedString) {.
    cdecl, importcpp: "SetComments", header: "CDM_Document.hxx".}
proc comments*(this: CDM_Document; aComments: var TColStdSequenceOfExtendedString) {.
    noSideEffect, cdecl, importcpp: "Comments", header: "CDM_Document.hxx".}
proc comment*(this: CDM_Document): StandardExtString {.noSideEffect, cdecl,
    importcpp: "Comment", header: "CDM_Document.hxx".}
proc isStored*(this: CDM_Document): bool {.noSideEffect, cdecl, importcpp: "IsStored",
                                       header: "CDM_Document.hxx".}
proc storageVersion*(this: CDM_Document): cint {.noSideEffect, cdecl,
    importcpp: "StorageVersion", header: "CDM_Document.hxx".}
proc setMetaData*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData]) {.cdecl,
    importcpp: "SetMetaData", header: "CDM_Document.hxx".}
proc unsetIsStored*(this: var CDM_Document) {.cdecl, importcpp: "UnsetIsStored",
    header: "CDM_Document.hxx".}
proc metaData*(this: CDM_Document): Handle[CDM_MetaData] {.noSideEffect, cdecl,
    importcpp: "MetaData", header: "CDM_Document.hxx".}
proc folder*(this: CDM_Document): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Folder", header: "CDM_Document.hxx".}
proc setRequestedFolder*(this: var CDM_Document; aFolder: TCollectionExtendedString) {.
    cdecl, importcpp: "SetRequestedFolder", header: "CDM_Document.hxx".}
proc requestedFolder*(this: CDM_Document): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "RequestedFolder", header: "CDM_Document.hxx".}
proc hasRequestedFolder*(this: CDM_Document): bool {.noSideEffect, cdecl,
    importcpp: "HasRequestedFolder", header: "CDM_Document.hxx".}
proc setRequestedName*(this: var CDM_Document; aName: TCollectionExtendedString) {.
    cdecl, importcpp: "SetRequestedName", header: "CDM_Document.hxx".}
proc requestedName*(this: var CDM_Document): TCollectionExtendedString {.cdecl,
    importcpp: "RequestedName", header: "CDM_Document.hxx".}
proc setRequestedPreviousVersion*(this: var CDM_Document;
                                 aPreviousVersion: TCollectionExtendedString) {.
    cdecl, importcpp: "SetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc unsetRequestedPreviousVersion*(this: var CDM_Document) {.cdecl,
    importcpp: "UnsetRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc hasRequestedPreviousVersion*(this: CDM_Document): bool {.noSideEffect, cdecl,
    importcpp: "HasRequestedPreviousVersion", header: "CDM_Document.hxx".}
proc requestedPreviousVersion*(this: CDM_Document): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "RequestedPreviousVersion",
    header: "CDM_Document.hxx".}
proc setRequestedComment*(this: var CDM_Document;
                         aComment: TCollectionExtendedString) {.cdecl,
    importcpp: "SetRequestedComment", header: "CDM_Document.hxx".}
proc requestedComment*(this: CDM_Document): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "RequestedComment", header: "CDM_Document.hxx".}
proc loadResources*(this: var CDM_Document) {.cdecl, importcpp: "LoadResources",
    header: "CDM_Document.hxx".}
proc findFileExtension*(this: var CDM_Document): bool {.cdecl,
    importcpp: "FindFileExtension", header: "CDM_Document.hxx".}
proc fileExtension*(this: var CDM_Document): TCollectionExtendedString {.cdecl,
    importcpp: "FileExtension", header: "CDM_Document.hxx".}
proc findDescription*(this: var CDM_Document): bool {.cdecl,
    importcpp: "FindDescription", header: "CDM_Document.hxx".}
proc description*(this: var CDM_Document): TCollectionExtendedString {.cdecl,
    importcpp: "Description", header: "CDM_Document.hxx".}
proc isModified*(this: CDM_Document): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", header: "CDM_Document.hxx".}
proc print*(this: CDM_Document; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Print", header: "CDM_Document.hxx".}
proc `<<`*(this: var CDM_Document; anOStream: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "(# << #)", header: "CDM_Document.hxx".}
proc isOpened*(this: CDM_Document): bool {.noSideEffect, cdecl, importcpp: "IsOpened",
                                       header: "CDM_Document.hxx".}
proc open*(this: var CDM_Document; anApplication: Handle[CDM_Application]) {.cdecl,
    importcpp: "Open", header: "CDM_Document.hxx".}
proc canClose*(this: CDM_Document): CDM_CanCloseStatus {.noSideEffect, cdecl,
    importcpp: "CanClose", header: "CDM_Document.hxx".}
proc close*(this: var CDM_Document) {.cdecl, importcpp: "Close",
                                  header: "CDM_Document.hxx".}
proc application*(this: CDM_Document): Handle[CDM_Application] {.noSideEffect, cdecl,
    importcpp: "Application", header: "CDM_Document.hxx".}
proc canCloseReference*(this: CDM_Document; aDocument: Handle[CDM_Document];
                       aReferenceIdentifier: cint): bool {.noSideEffect, cdecl,
    importcpp: "CanCloseReference", header: "CDM_Document.hxx".}
proc closeReference*(this: var CDM_Document; aDocument: Handle[CDM_Document];
                    aReferenceIdentifier: cint) {.cdecl,
    importcpp: "CloseReference", header: "CDM_Document.hxx".}
proc isOpened*(this: CDM_Document; aReferenceIdentifier: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsOpened", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData];
                     aReferenceIdentifier: cint;
                     anApplication: Handle[CDM_Application];
                     aToDocumentVersion: cint; useStorageConfiguration: bool) {.
    cdecl, importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc createReference*(this: var CDM_Document; aMetaData: Handle[CDM_MetaData];
                     anApplication: Handle[CDM_Application];
                     aDocumentVersion: cint; useStorageConfiguration: bool): cint {.
    cdecl, importcpp: "CreateReference", header: "CDM_Document.hxx".}
proc referenceCounter*(this: CDM_Document): cint {.noSideEffect, cdecl,
    importcpp: "ReferenceCounter", header: "CDM_Document.hxx".}
proc update*(this: var CDM_Document) {.cdecl, importcpp: "Update",
                                   header: "CDM_Document.hxx".}
proc reference*(this: CDM_Document; aReferenceIdentifier: cint): Handle[CDM_Reference] {.
    noSideEffect, cdecl, importcpp: "Reference", header: "CDM_Document.hxx".}
proc setModifications*(this: var CDM_Document; modifications: cint) {.cdecl,
    importcpp: "SetModifications", header: "CDM_Document.hxx".}
proc setReferenceCounter*(this: var CDM_Document; aReferenceCounter: cint) {.cdecl,
    importcpp: "SetReferenceCounter", header: "CDM_Document.hxx".}
proc dumpJson*(this: CDM_Document; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "CDM_Document.hxx".}

