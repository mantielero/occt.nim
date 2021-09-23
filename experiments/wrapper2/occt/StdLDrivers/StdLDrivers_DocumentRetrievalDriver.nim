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

import
  ../PCDM/PCDM_RetrievalDriver, ../Storage/Storage_Error

discard "forward decl of StdObjMgt_MapOfInstantiators"
discard "forward decl of StdObjMgt_Persistent"
type
  StdLDrivers_DocumentRetrievalDriver* {.importcpp: "StdLDrivers_DocumentRetrievalDriver", header: "StdLDrivers_DocumentRetrievalDriver.hxx",
                                        bycopy.} = object of PCDM_RetrievalDriver ## !
                                                                             ## Create an
                                                                             ## empty
                                                                             ## TDocStd_Document.
                                                                             ## !
                                                                             ## Register
                                                                             ## types.
                                                                             ## !
                                                                             ## Read
                                                                             ## persistent
                                                                             ## document
                                                                             ## from a
                                                                             ## file.


proc CreateDocument*(this: var StdLDrivers_DocumentRetrievalDriver): handle[
    CDM_Document] {.importcpp: "CreateDocument",
                   header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var StdLDrivers_DocumentRetrievalDriver;
          theFileName: TCollection_ExtendedString;
          theNewDocument: handle[CDM_Document];
          theApplication: handle[CDM_Application];
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc Read*(this: var StdLDrivers_DocumentRetrievalDriver;
          theIStream: var Standard_IStream; theStorageData: handle[Storage_Data];
          theDoc: handle[CDM_Document]; theApplication: handle[CDM_Application];
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
type
  StdLDrivers_DocumentRetrievalDriverbase_type* = PCDM_RetrievalDriver

proc get_type_name*(): cstring {.importcpp: "StdLDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdLDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "StdLDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: StdLDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StdLDrivers_DocumentRetrievalDriver.hxx".}