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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Data"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Message_Messenger"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of PCDM_ReadWriter"
discard "forward decl of PCDM_ReadWriter"
type
  HandlePCDM_ReadWriter* = Handle[PCDM_ReadWriter]
  PCDM_ReadWriter* {.importcpp: "PCDM_ReadWriter", header: "PCDM_ReadWriter.hxx",
                    bycopy.} = object of StandardTransient ## ! returns PCDM_ReadWriter_1.


proc version*(this: PCDM_ReadWriter): TCollectionAsciiString {.noSideEffect,
    importcpp: "Version", header: "PCDM_ReadWriter.hxx".}
proc writeReferenceCounter*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                           aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteReferenceCounter", header: "PCDM_ReadWriter.hxx".}
proc writeReferences*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document];
                     theReferencerFileName: TCollectionExtendedString) {.
    noSideEffect, importcpp: "WriteReferences", header: "PCDM_ReadWriter.hxx".}
proc writeExtensions*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteExtensions", header: "PCDM_ReadWriter.hxx".}
proc writeVersion*(this: PCDM_ReadWriter; aData: Handle[StorageData];
                  aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteVersion", header: "PCDM_ReadWriter.hxx".}
proc readReferenceCounter*(this: PCDM_ReadWriter;
                          theFileName: TCollectionExtendedString;
                          theMsgDriver: Handle[MessageMessenger]): StandardInteger {.
    noSideEffect, importcpp: "ReadReferenceCounter", header: "PCDM_ReadWriter.hxx".}
proc readReferences*(this: PCDM_ReadWriter; aFileName: TCollectionExtendedString;
                    theReferences: var PCDM_SequenceOfReference;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect,
    importcpp: "ReadReferences", header: "PCDM_ReadWriter.hxx".}
proc readExtensions*(this: PCDM_ReadWriter; aFileName: TCollectionExtendedString;
                    theExtensions: var TColStdSequenceOfExtendedString;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect,
    importcpp: "ReadExtensions", header: "PCDM_ReadWriter.hxx".}
proc readDocumentVersion*(this: PCDM_ReadWriter;
                         aFileName: TCollectionExtendedString;
                         theMsgDriver: Handle[MessageMessenger]): StandardInteger {.
    noSideEffect, importcpp: "ReadDocumentVersion", header: "PCDM_ReadWriter.hxx".}
proc open*(aDriver: Handle[StorageBaseDriver];
          aFileName: TCollectionExtendedString; anOpenMode: StorageOpenMode) {.
    importcpp: "PCDM_ReadWriter::Open(@)", header: "PCDM_ReadWriter.hxx".}
proc reader*(aFileName: TCollectionExtendedString): Handle[PCDM_ReadWriter] {.
    importcpp: "PCDM_ReadWriter::Reader(@)", header: "PCDM_ReadWriter.hxx".}
proc writer*(): Handle[PCDM_ReadWriter] {.importcpp: "PCDM_ReadWriter::Writer(@)",
                                       header: "PCDM_ReadWriter.hxx".}
proc writeFileFormat*(aData: Handle[StorageData]; aDocument: Handle[CDM_Document]) {.
    importcpp: "PCDM_ReadWriter::WriteFileFormat(@)",
    header: "PCDM_ReadWriter.hxx".}
proc fileFormat*(aFileName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "PCDM_ReadWriter::FileFormat(@)", header: "PCDM_ReadWriter.hxx".}
proc fileFormat*(theIStream: var StandardIStream; theData: var Handle[StorageData]): TCollectionExtendedString {.
    importcpp: "PCDM_ReadWriter::FileFormat(@)", header: "PCDM_ReadWriter.hxx".}
type
  PCDM_ReadWriterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "PCDM_ReadWriter::get_type_name(@)",
                            header: "PCDM_ReadWriter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PCDM_ReadWriter::get_type_descriptor(@)",
    header: "PCDM_ReadWriter.hxx".}
proc dynamicType*(this: PCDM_ReadWriter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_ReadWriter.hxx".}

