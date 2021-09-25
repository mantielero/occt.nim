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

type
  XmlTObjDriversObjectDriver* {.importcpp: "XmlTObjDrivers_ObjectDriver",
                               header: "XmlTObjDrivers_ObjectDriver.hxx", bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDriversObjectDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlTObjDriversObjectDriver {.
    constructor, importcpp: "XmlTObjDrivers_ObjectDriver(@)",
    header: "XmlTObjDrivers_ObjectDriver.hxx".}
proc newEmpty*(this: XmlTObjDriversObjectDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlTObjDrivers_ObjectDriver.hxx".}
proc paste*(this: XmlTObjDriversObjectDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ObjectDriver.hxx".}
proc paste*(this: XmlTObjDriversObjectDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ObjectDriver.hxx".}
type
  XmlTObjDriversObjectDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlTObjDrivers_ObjectDriver::get_type_name(@)",
                            header: "XmlTObjDrivers_ObjectDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlTObjDrivers_ObjectDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_ObjectDriver.hxx".}
proc dynamicType*(this: XmlTObjDriversObjectDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_ObjectDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_ObjectDriver"
type
  HandleXmlTObjDriversObjectDriver* = Handle[XmlTObjDriversObjectDriver]

# when defined(_MSC_VER):
#   discard
