##  Created on: 2001-07-25
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of PCDM_Document"
discard "forward decl of CDM_Document"
discard "forward decl of CDM_Application"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlLDrivers_DocumentRetrievalDriver"
discard "forward decl of XmlLDrivers_DocumentRetrievalDriver"
type
  HandleC1C1* = Handle[XmlLDriversDocumentRetrievalDriver]
  XmlLDriversDocumentRetrievalDriver* {.importcpp: "XmlLDrivers_DocumentRetrievalDriver", header: "XmlLDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of PCDM_RetrievalDriver


proc constructXmlLDriversDocumentRetrievalDriver*(): XmlLDriversDocumentRetrievalDriver {.
    constructor, importcpp: "XmlLDrivers_DocumentRetrievalDriver(@)",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc createDocument*(this: var XmlLDriversDocumentRetrievalDriver): Handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var XmlLDriversDocumentRetrievalDriver;
          theFileName: TCollectionExtendedString;
          theNewDocument: Handle[CDM_Document];
          theApplication: Handle[CDM_Application];
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var XmlLDriversDocumentRetrievalDriver;
          theIStream: var StandardIStream; theStorageData: Handle[StorageData];
          theDoc: Handle[CDM_Document]; theApplication: Handle[CDM_Application];
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var XmlLDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
type
  XmlLDriversDocumentRetrievalDriverbaseType* = PCDM_RetrievalDriver

proc getTypeName*(): cstring {.importcpp: "XmlLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                            header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: XmlLDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}

























