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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../TCollection/TCollection_ExtendedString, ../PCDM/PCDM_RetrievalDriver,
  ../XmlObjMgt/XmlObjMgt_Element, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Storage/Storage_Data

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
  Handle_XmlLDrivers_DocumentRetrievalDriver* = handle[
      XmlLDrivers_DocumentRetrievalDriver]
  XmlLDrivers_DocumentRetrievalDriver* {.importcpp: "XmlLDrivers_DocumentRetrievalDriver", header: "XmlLDrivers_DocumentRetrievalDriver.hxx",
                                        bycopy.} = object of PCDM_RetrievalDriver


proc constructXmlLDrivers_DocumentRetrievalDriver*(): XmlLDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "XmlLDrivers_DocumentRetrievalDriver(@)",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc CreateDocument*(this: var XmlLDrivers_DocumentRetrievalDriver): handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var XmlLDrivers_DocumentRetrievalDriver;
          theFileName: TCollection_ExtendedString;
          theNewDocument: handle[CDM_Document];
          theApplication: handle[CDM_Application];
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var XmlLDrivers_DocumentRetrievalDriver;
          theIStream: var Standard_IStream; theStorageData: handle[Storage_Data];
          theDoc: handle[CDM_Document]; theApplication: handle[CDM_Application];
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var XmlLDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
type
  XmlLDrivers_DocumentRetrievalDriverbase_type* = PCDM_RetrievalDriver

proc get_type_name*(): cstring {.importcpp: "XmlLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: XmlLDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlLDrivers_DocumentRetrievalDriver.hxx".}