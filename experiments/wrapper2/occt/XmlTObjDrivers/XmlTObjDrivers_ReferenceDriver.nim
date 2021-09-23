##  Created on: 2004-11-24
##  Created by: Edward AGAPOV
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
  ../TObj/TObj_Common, ../XmlMDF/XmlMDF_ADriver

type
  XmlTObjDrivers_ReferenceDriver* {.importcpp: "XmlTObjDrivers_ReferenceDriver", header: "XmlTObjDrivers_ReferenceDriver.hxx",
                                   bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDrivers_ReferenceDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlTObjDrivers_ReferenceDriver {.
    constructor, importcpp: "XmlTObjDrivers_ReferenceDriver(@)",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc NewEmpty*(this: XmlTObjDrivers_ReferenceDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_ReferenceDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_ReferenceDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ReferenceDriver.hxx".}
type
  XmlTObjDrivers_ReferenceDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlTObjDrivers_ReferenceDriver::get_type_name(@)",
                              header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlTObjDrivers_ReferenceDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc DynamicType*(this: XmlTObjDrivers_ReferenceDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_ReferenceDriver"
type
  Handle_XmlTObjDrivers_ReferenceDriver* = handle[XmlTObjDrivers_ReferenceDriver]

when defined(_MSC_VER):
  discard