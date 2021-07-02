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
discard "forward decl of PCDM_ReadWriter_1"
discard "forward decl of PCDM_ReadWriter_1"
type
  HandlePCDM_ReadWriter1* = Handle[PCDM_ReadWriter1]
  PCDM_ReadWriter1* {.importcpp: "PCDM_ReadWriter_1",
                     header: "PCDM_ReadWriter_1.hxx", bycopy.} = object of PCDM_ReadWriter


proc constructPCDM_ReadWriter1*(): PCDM_ReadWriter1 {.constructor,
    importcpp: "PCDM_ReadWriter_1(@)", header: "PCDM_ReadWriter_1.hxx".}
proc version*(this: PCDM_ReadWriter1): TCollectionAsciiString {.noSideEffect,
    importcpp: "Version", header: "PCDM_ReadWriter_1.hxx".}
proc writeReferenceCounter*(this: PCDM_ReadWriter1; aData: Handle[StorageData];
                           aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteReferenceCounter", header: "PCDM_ReadWriter_1.hxx".}
proc writeReferences*(this: PCDM_ReadWriter1; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document];
                     theReferencerFileName: TCollectionExtendedString) {.
    noSideEffect, importcpp: "WriteReferences", header: "PCDM_ReadWriter_1.hxx".}
proc writeExtensions*(this: PCDM_ReadWriter1; aData: Handle[StorageData];
                     aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteExtensions", header: "PCDM_ReadWriter_1.hxx".}
proc writeVersion*(this: PCDM_ReadWriter1; aData: Handle[StorageData];
                  aDocument: Handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteVersion", header: "PCDM_ReadWriter_1.hxx".}
proc readReferenceCounter*(this: PCDM_ReadWriter1;
                          aFileName: TCollectionExtendedString;
                          theMsgDriver: Handle[MessageMessenger]): StandardInteger {.
    noSideEffect, importcpp: "ReadReferenceCounter",
    header: "PCDM_ReadWriter_1.hxx".}
proc readReferences*(this: PCDM_ReadWriter1; aFileName: TCollectionExtendedString;
                    theReferences: var PCDM_SequenceOfReference;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect,
    importcpp: "ReadReferences", header: "PCDM_ReadWriter_1.hxx".}
proc readExtensions*(this: PCDM_ReadWriter1; aFileName: TCollectionExtendedString;
                    theExtensions: var TColStdSequenceOfExtendedString;
                    theMsgDriver: Handle[MessageMessenger]) {.noSideEffect,
    importcpp: "ReadExtensions", header: "PCDM_ReadWriter_1.hxx".}
proc readDocumentVersion*(this: PCDM_ReadWriter1;
                         aFileName: TCollectionExtendedString;
                         theMsgDriver: Handle[MessageMessenger]): StandardInteger {.
    noSideEffect, importcpp: "ReadDocumentVersion", header: "PCDM_ReadWriter_1.hxx".}
type
  PCDM_ReadWriter1baseType* = PCDM_ReadWriter

proc getTypeName*(): cstring {.importcpp: "PCDM_ReadWriter_1::get_type_name(@)",
                            header: "PCDM_ReadWriter_1.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PCDM_ReadWriter_1::get_type_descriptor(@)",
    header: "PCDM_ReadWriter_1.hxx".}
proc dynamicType*(this: PCDM_ReadWriter1): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_ReadWriter_1.hxx".}

