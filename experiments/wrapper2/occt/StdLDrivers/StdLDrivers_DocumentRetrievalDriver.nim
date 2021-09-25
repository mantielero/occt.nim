##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StdObjMgt_MapOfInstantiators"
discard "forward decl of StdObjMgt_Persistent"
type
  StdLDriversDocumentRetrievalDriver* {.importcpp: "StdLDrivers_DocumentRetrievalDriver", header: "StdLDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of PCDM_RetrievalDriver ## !
                                                                            ## Create an
                                                                            ## empty
                                                                            ## TDocStd_Document.
                                                                            ## !
                                                                            ## Register
                                                                            ## types.
                                                                            ## ! Read
                                                                            ## persistent
                                                                            ## document from a
                                                                            ## file.


proc createDocument*(this: var StdLDriversDocumentRetrievalDriver): Handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var StdLDriversDocumentRetrievalDriver;
          theFileName: TCollectionExtendedString;
          theNewDocument: Handle[CDM_Document];
          theApplication: Handle[CDM_Application];
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc read*(this: var StdLDriversDocumentRetrievalDriver;
          theIStream: var StandardIStream; theStorageData: Handle[StorageData];
          theDoc: Handle[CDM_Document]; theApplication: Handle[CDM_Application];
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
type
  StdLDriversDocumentRetrievalDriverbaseType* = PCDM_RetrievalDriver

proc getTypeName*(): cstring {.importcpp: "StdLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                            header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: StdLDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
