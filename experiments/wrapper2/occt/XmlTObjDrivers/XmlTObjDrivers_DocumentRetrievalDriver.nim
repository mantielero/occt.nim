##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  ../TObj/TObj_Common, ../XmlLDrivers/XmlLDrivers_DocumentRetrievalDriver,
  ../XmlMDF/XmlMDF_ADriverTable

##  Retrieval driver of a TObj XML document
##

type
  XmlTObjDrivers_DocumentRetrievalDriver* {.
      importcpp: "XmlTObjDrivers_DocumentRetrievalDriver",
      header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx", bycopy.} = object of XmlLDrivers_DocumentRetrievalDriver ##  ---------- PUBLIC METHODS ----------
                                                                                                              ##  Declaration of CASCADE RTTI


proc constructXmlTObjDrivers_DocumentRetrievalDriver*(): XmlTObjDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "XmlTObjDrivers_DocumentRetrievalDriver(@)",
    header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var XmlTObjDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    XmlMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx".}
type
  XmlTObjDrivers_DocumentRetrievalDriverbase_type* = XmlLDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "XmlTObjDrivers_DocumentRetrievalDriver::get_type_name(@)", header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "XmlTObjDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: XmlTObjDrivers_DocumentRetrievalDriver): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "XmlTObjDrivers_DocumentRetrievalDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of XmlTObjDrivers_DocumentRetrievalDriver"
type
  Handle_XmlTObjDrivers_DocumentRetrievalDriver* = handle[
      XmlTObjDrivers_DocumentRetrievalDriver]

when defined(_MSC_VER):
  discard