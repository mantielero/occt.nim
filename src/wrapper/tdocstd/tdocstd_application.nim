import tdocstd_types
import ../tcolstd/tcolstd_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../resource/resource_types
import ../pcdm/pcdm_types
import ../cdm/cdm_types
import ../message/message_includes


##  Created on: 1999-06-30
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





proc newTDocStdApplication*(): TDocStdApplication {.cdecl, constructor,
    importcpp: "TDocStd_Application(@)", header: "TDocStd_Application.hxx".}
proc isDriverLoaded*(this: TDocStdApplication): bool {.noSideEffect, cdecl,
    importcpp: "IsDriverLoaded", header: "TDocStd_Application.hxx".}
proc resources*(this: var TDocStdApplication): Handle[ResourceManager] {.cdecl,
    importcpp: "Resources", header: "TDocStd_Application.hxx".}
proc resourcesName*(this: var TDocStdApplication): cstring {.cdecl,
    importcpp: "ResourcesName", header: "TDocStd_Application.hxx".}
proc defineFormat*(this: var TDocStdApplication; theFormat: TCollectionAsciiString;
                  theDescription: TCollectionAsciiString;
                  theExtension: TCollectionAsciiString;
                  theReader: Handle[PCDM_RetrievalDriver];
                  theWriter: Handle[PCDM_StorageDriver]) {.cdecl,
    importcpp: "DefineFormat", header: "TDocStd_Application.hxx".}
proc readingFormats*(this: var TDocStdApplication;
                    theFormats: var TColStdSequenceOfAsciiString) {.cdecl,
    importcpp: "ReadingFormats", header: "TDocStd_Application.hxx".}
proc writingFormats*(this: var TDocStdApplication;
                    theFormats: var TColStdSequenceOfAsciiString) {.cdecl,
    importcpp: "WritingFormats", header: "TDocStd_Application.hxx".}
proc nbDocuments*(this: TDocStdApplication): cint {.noSideEffect, cdecl,
    importcpp: "NbDocuments", header: "TDocStd_Application.hxx".}
proc getDocument*(this: TDocStdApplication; index: cint;
                 aDoc: var Handle[TDocStdDocument]) {.noSideEffect, cdecl,
    importcpp: "GetDocument", header: "TDocStd_Application.hxx".}
proc newDocument*(this: var TDocStdApplication; format: TCollectionExtendedString;
                 aDoc: var Handle[CDM_Document]) {.cdecl, importcpp: "NewDocument",
    header: "TDocStd_Application.hxx".}
proc newDocument*(this: var TDocStdApplication; format: TCollectionExtendedString;
                 aDoc: var Handle[TDocStdDocument]) {.cdecl,
    importcpp: "NewDocument", header: "TDocStd_Application.hxx".}
proc initDocument*(this: TDocStdApplication; aDoc: Handle[CDM_Document]) {.
    noSideEffect, cdecl, importcpp: "InitDocument",
    header: "TDocStd_Application.hxx".}
proc close*(this: var TDocStdApplication; aDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "Close", header: "TDocStd_Application.hxx".}
proc isInSession*(this: TDocStdApplication; path: TCollectionExtendedString): cint {.
    noSideEffect, cdecl, importcpp: "IsInSession", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; thePath: TCollectionExtendedString;
          theDoc: var Handle[TDocStdDocument];
          theFilter: Handle[PCDM_ReaderFilter];
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_ReaderStatus {.
    cdecl, importcpp: "Open", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; thePath: TCollectionExtendedString;
          theDoc: var Handle[TDocStdDocument];
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_ReaderStatus {.
    cdecl, importcpp: "Open", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; theIStream: var StandardIStream;
          theDoc: var Handle[TDocStdDocument];
          theFilter: Handle[PCDM_ReaderFilter];
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_ReaderStatus {.
    cdecl, importcpp: "Open", header: "TDocStd_Application.hxx".}
proc open*(this: var TDocStdApplication; theIStream: var StandardIStream;
          theDoc: var Handle[TDocStdDocument];
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_ReaderStatus {.
    cdecl, importcpp: "Open", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            path: TCollectionExtendedString;
            theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            theOStream: var StandardOStream;
            theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc save*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "Save", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            path: TCollectionExtendedString;
            theStatusMessage: var TCollectionExtendedString;
            theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc saveAs*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
            theOStream: var StandardOStream;
            theStatusMessage: var TCollectionExtendedString;
            theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "SaveAs", header: "TDocStd_Application.hxx".}
proc save*(this: var TDocStdApplication; theDoc: Handle[TDocStdDocument];
          theStatusMessage: var TCollectionExtendedString;
          theRange: MessageProgressRange = newMessageProgressRange()): PCDM_StoreStatus {.
    cdecl, importcpp: "Save", header: "TDocStd_Application.hxx".}
proc onOpenTransaction*(this: var TDocStdApplication;
                       theDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "OnOpenTransaction", header: "TDocStd_Application.hxx".}
proc onCommitTransaction*(this: var TDocStdApplication;
                         theDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "OnCommitTransaction", header: "TDocStd_Application.hxx".}
proc onAbortTransaction*(this: var TDocStdApplication;
                        theDoc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "OnAbortTransaction", header: "TDocStd_Application.hxx".}
proc dumpJson*(this: TDocStdApplication; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDocStd_Application.hxx".}

