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
  XmlTObjDrivers_ModelDriver* {.importcpp: "XmlTObjDrivers_ModelDriver",
                               header: "XmlTObjDrivers_ModelDriver.hxx", bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDrivers_ModelDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlTObjDrivers_ModelDriver {.
    constructor, importcpp: "XmlTObjDrivers_ModelDriver(@)",
    header: "XmlTObjDrivers_ModelDriver.hxx".}
proc NewEmpty*(this: XmlTObjDrivers_ModelDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlTObjDrivers_ModelDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_ModelDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlTObjDrivers_ModelDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_ModelDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ModelDriver.hxx".}
type
  XmlTObjDrivers_ModelDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlTObjDrivers_ModelDriver::get_type_name(@)",
                              header: "XmlTObjDrivers_ModelDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlTObjDrivers_ModelDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_ModelDriver.hxx".}
proc DynamicType*(this: XmlTObjDrivers_ModelDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_ModelDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_ModelDriver"
type
  Handle_XmlTObjDrivers_ModelDriver* = handle[XmlTObjDrivers_ModelDriver]

when defined(_MSC_VER):
  discard