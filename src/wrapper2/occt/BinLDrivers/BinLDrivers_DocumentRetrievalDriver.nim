##  Created on: 2002-10-31
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of PCDM_Document"
discard "forward decl of CDM_Document"
discard "forward decl of CDM_Application"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_HeaderData"
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of BinLDrivers_DocumentRetrievalDriver"
discard "forward decl of BinLDrivers_DocumentRetrievalDriver"
type
  HandleBinLDriversDocumentRetrievalDriver* = Handle[
      BinLDriversDocumentRetrievalDriver]
  BinLDriversDocumentRetrievalDriver* {.importcpp: "BinLDrivers_DocumentRetrievalDriver", header: "BinLDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of PCDM_RetrievalDriver ## !
                                                                            ## Constructor
                                                                            ## ! Read the tree from the
                                                                            ## stream
                                                                            ## <theIS> to
                                                                            ## <theLabel>


proc constructBinLDriversDocumentRetrievalDriver*(): BinLDriversDocumentRetrievalDriver {.
    constructor, importcpp: "BinLDrivers_DocumentRetrievalDriver(@)",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc createDocument*(this: var BinLDriversDocumentRetrievalDriver): Handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var BinLDriversDocumentRetrievalDriver;
          theFileName: TCollectionExtendedString;
          theNewDocument: Handle[CDM_Document];
          theApplication: Handle[CDM_Application];
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var BinLDriversDocumentRetrievalDriver;
          theIStream: var StandardIStream; theStorageData: Handle[StorageData];
          theDoc: Handle[CDM_Document]; theApplication: Handle[CDM_Application];
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var BinLDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
type
  BinLDriversDocumentRetrievalDriverbaseType* = PCDM_RetrievalDriver

proc getTypeName*(): cstring {.importcpp: "BinLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                            header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: BinLDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}

