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
  XmlTObjDriversReferenceDriver* {.importcpp: "XmlTObjDrivers_ReferenceDriver",
                                  header: "XmlTObjDrivers_ReferenceDriver.hxx",
                                  bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDriversReferenceDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlTObjDriversReferenceDriver {.
    constructor, importcpp: "XmlTObjDrivers_ReferenceDriver(@)",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc newEmpty*(this: XmlTObjDriversReferenceDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc paste*(this: XmlTObjDriversReferenceDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc paste*(this: XmlTObjDriversReferenceDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_ReferenceDriver.hxx".}
type
  XmlTObjDriversReferenceDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlTObjDrivers_ReferenceDriver::get_type_name(@)",
                            header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlTObjDrivers_ReferenceDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
proc dynamicType*(this: XmlTObjDriversReferenceDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_ReferenceDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_ReferenceDriver"
type
  HandleXmlTObjDriversReferenceDriver* = Handle[XmlTObjDriversReferenceDriver]

# when defined(_MSC_VER):
#   discard
