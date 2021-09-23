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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BinObjMgt/BinObjMgt_Persistent, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../TColStd/TColStd_MapOfInteger, BinLDrivers_VectorOfDocumentSection,
  ../PCDM/PCDM_RetrievalDriver, ../Standard/Standard_Integer,
  ../Standard/Standard_IStream, ../Storage/Storage_Position,
  ../Standard/Standard_Boolean, ../Storage/Storage_Data

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
  Handle_BinLDrivers_DocumentRetrievalDriver* = handle[
      BinLDrivers_DocumentRetrievalDriver]
  BinLDrivers_DocumentRetrievalDriver* {.importcpp: "BinLDrivers_DocumentRetrievalDriver", header: "BinLDrivers_DocumentRetrievalDriver.hxx",
                                        bycopy.} = object of PCDM_RetrievalDriver ## !
                                                                             ## Constructor
                                                                             ## !
                                                                             ## Read the
                                                                             ## tree
                                                                             ## from the
                                                                             ## stream
                                                                             ## <theIS> to
                                                                             ## <theLabel>


proc constructBinLDrivers_DocumentRetrievalDriver*(): BinLDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "BinLDrivers_DocumentRetrievalDriver(@)",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc CreateDocument*(this: var BinLDrivers_DocumentRetrievalDriver): handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var BinLDrivers_DocumentRetrievalDriver;
          theFileName: TCollection_ExtendedString;
          theNewDocument: handle[CDM_Document];
          theApplication: handle[CDM_Application];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var BinLDrivers_DocumentRetrievalDriver;
          theIStream: var Standard_IStream; theStorageData: handle[Storage_Data];
          theDoc: handle[CDM_Document]; theApplication: handle[CDM_Application];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var BinLDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
type
  BinLDrivers_DocumentRetrievalDriverbase_type* = PCDM_RetrievalDriver

proc get_type_name*(): cstring {.importcpp: "BinLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: BinLDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinLDrivers_DocumentRetrievalDriver.hxx".}