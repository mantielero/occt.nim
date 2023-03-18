import ../standard/standard_types
import ../cdm/cdm_types
import ../tcollection/tcollection_types
import ../message/message_types
import pcdm_types
import ../tcolstd/tcolstd_types
import ../storage/storage_types


##  Created on: 1997-12-09
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



proc version*(this: PCDM_ReadWriter): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Version", header: "PCDM_ReadWriter.hxx".}
proc writeReferenceCounter*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                           aDocument: Handle[CDM_Document]) {.noSideEffect, cdecl,
    importcpp: "WriteReferenceCounter", header: "PCDM_ReadWriter.hxx".}
proc writeReferences*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document];
                     theReferencerFileName: TCollectionExtendedString) {.
    noSideEffect, cdecl, importcpp: "WriteReferences", header: "PCDM_ReadWriter.hxx".}
proc writeExtensions*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document]) {.noSideEffect, cdecl,
    importcpp: "WriteExtensions", header: "PCDM_ReadWriter.hxx".}
proc writeVersion*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                  aDocument: Handle[CDM_Document]) {.noSideEffect, cdecl,
    importcpp: "WriteVersion", header: "PCDM_ReadWriter.hxx".}
proc readReferenceCounter*(this: PCDM_ReadWriter;
                          theFileName: TCollectionExtendedString;
                          theMsgDriver: Handle[MessageMessenger]): cint {.
    noSideEffect, cdecl, importcpp: "ReadReferenceCounter",
    header: "PCDM_ReadWriter.hxx".}
proc readReferences*(this: PCDM_ReadWriter; aFileName: TCollectionExtendedString;
                    theReferences: var PCDM_SequenceOfReference;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect, cdecl,
    importcpp: "ReadReferences", header: "PCDM_ReadWriter.hxx".}
proc readExtensions*(this: PCDM_ReadWriter; aFileName: TCollectionExtendedString;
                    theExtensions: var TColStdSequenceOfExtendedString;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect, cdecl,
    importcpp: "ReadExtensions", header: "PCDM_ReadWriter.hxx".}
proc readDocumentVersion*(this: PCDM_ReadWriter;
                         aFileName: TCollectionExtendedString;
                         theMsgDriver: Handle[MessageMessenger]): cint {.
    noSideEffect, cdecl, importcpp: "ReadDocumentVersion",
    header: "PCDM_ReadWriter.hxx".}
proc open*(aDriver: Handle[StorageBaseDriver];
          aFileName: TCollectionExtendedString; anOpenMode: StorageOpenMode) {.
    cdecl, importcpp: "PCDM_ReadWriter::Open(@)", header: "PCDM_ReadWriter.hxx".}
proc reader*(aFileName: TCollectionExtendedString): Handle[PCDM_ReadWriter] {.cdecl,
    importcpp: "PCDM_ReadWriter::Reader(@)", header: "PCDM_ReadWriter.hxx".}
proc writer*(): Handle[PCDM_ReadWriter] {.cdecl,
                                       importcpp: "PCDM_ReadWriter::Writer(@)",
                                       header: "PCDM_ReadWriter.hxx".}
proc writeFileFormat*(aData: Handle[StorageData]; aDocument: Handle[CDM_Document]) {.
    cdecl, importcpp: "PCDM_ReadWriter::WriteFileFormat(@)",
    header: "PCDM_ReadWriter.hxx".}
proc fileFormat*(aFileName: TCollectionExtendedString): TCollectionExtendedString {.
    cdecl, importcpp: "PCDM_ReadWriter::FileFormat(@)",
    header: "PCDM_ReadWriter.hxx".}
proc fileFormat*(theIStream: var StandardIStream; theData: var Handle[StorageData]): TCollectionExtendedString {.
    cdecl, importcpp: "PCDM_ReadWriter::FileFormat(@)",
    header: "PCDM_ReadWriter.hxx".}

