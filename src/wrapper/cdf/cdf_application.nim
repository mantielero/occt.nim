import ../standard/standard_types
import ../tcollection/tcollection_types
import cdf_types
import ../cdm/cdm_types
import ../pcdm/pcdm_types
import ../message/message_includes






##  Created on: 1997-08-07
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



proc load*(aGUID: StandardGUID): Handle[CDF_Application] {.cdecl,
    importcpp: "CDF_Application::Load(@)", header: "CDF_Application.hxx".}
proc newDocument*(this: var CDF_Application; theFormat: TCollectionExtendedString;
                 theDoc: var Handle[CDM_Document]) {.cdecl,
    importcpp: "NewDocument", header: "CDF_Application.hxx".}
proc initDocument*(this: CDF_Application; theDoc: Handle[CDM_Document]) {.
    noSideEffect, cdecl, importcpp: "InitDocument", header: "CDF_Application.hxx".}
proc open*(this: var CDF_Application; aDocument: Handle[CDM_Document]) {.cdecl,
    importcpp: "Open", header: "CDF_Application.hxx".}
proc canClose*(this: var CDF_Application; aDocument: Handle[CDM_Document]): CDM_CanCloseStatus {.
    cdecl, importcpp: "CanClose", header: "CDF_Application.hxx".}
proc close*(this: var CDF_Application; aDocument: Handle[CDM_Document]) {.cdecl,
    importcpp: "Close", header: "CDF_Application.hxx".}
proc retrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              useStorageConfiguration: bool = true; theFilter: Handle[
    PCDM_ReaderFilter] = Handle[PCDM_ReaderFilter]();
              theRange: MessageProgressRange = newMessageProgressRange()): Handle[
    CDM_Document] {.cdecl, importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc retrieve*(this: var CDF_Application; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              aVersion: TCollectionExtendedString;
              useStorageConfiguration: bool = true; theFilter: Handle[
    PCDM_ReaderFilter] = Handle[PCDM_ReaderFilter]();
              theRange: MessageProgressRange = newMessageProgressRange()): Handle[
    CDM_Document] {.cdecl, importcpp: "Retrieve", header: "CDF_Application.hxx".}
proc canRetrieve*(this: var CDF_Application; theFolder: TCollectionExtendedString;
                 theName: TCollectionExtendedString; theAppendMode: bool): PCDM_ReaderStatus {.
    cdecl, importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc canRetrieve*(this: var CDF_Application; theFolder: TCollectionExtendedString;
                 theName: TCollectionExtendedString;
                 theVersion: TCollectionExtendedString; theAppendMode: bool): PCDM_ReaderStatus {.
    cdecl, importcpp: "CanRetrieve", header: "CDF_Application.hxx".}
proc getRetrieveStatus*(this: CDF_Application): PCDM_ReaderStatus {.noSideEffect,
    cdecl, importcpp: "GetRetrieveStatus", header: "CDF_Application.hxx".}
proc read*(this: var CDF_Application; theIStream: var StandardIStream;
          theDocument: var Handle[CDM_Document];
          theFilter: Handle[PCDM_ReaderFilter] = Handle[PCDM_ReaderFilter]();
          theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Read", header: "CDF_Application.hxx".}
proc readerFromFormat*(this: var CDF_Application; aFormat: TCollectionExtendedString): Handle[
    PCDM_Reader] {.cdecl, importcpp: "ReaderFromFormat",
                  header: "CDF_Application.hxx".}
proc writerFromFormat*(this: var CDF_Application; aFormat: TCollectionExtendedString): Handle[
    PCDM_StorageDriver] {.cdecl, importcpp: "WriterFromFormat",
                         header: "CDF_Application.hxx".}
proc format*(this: var CDF_Application; aFileName: TCollectionExtendedString;
            theFormat: var TCollectionExtendedString): bool {.cdecl,
    importcpp: "Format", header: "CDF_Application.hxx".}
proc defaultFolder*(this: var CDF_Application): StandardExtString {.cdecl,
    importcpp: "DefaultFolder", header: "CDF_Application.hxx".}
proc setDefaultFolder*(this: var CDF_Application; aFolder: StandardExtString): bool {.
    cdecl, importcpp: "SetDefaultFolder", header: "CDF_Application.hxx".}
proc metaDataDriver*(this: CDF_Application): Handle[CDF_MetaDataDriver] {.
    noSideEffect, cdecl, importcpp: "MetaDataDriver", header: "CDF_Application.hxx".}



