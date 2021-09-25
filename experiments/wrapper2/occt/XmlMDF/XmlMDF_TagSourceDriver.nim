##  Created on: 2001-08-29
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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDF_TagSourceDriver"
discard "forward decl of XmlMDF_TagSourceDriver"
type
  HandleXmlMDF_TagSourceDriver* = Handle[XmlMDF_TagSourceDriver]

## ! Attribute Driver.

type
  XmlMDF_TagSourceDriver* {.importcpp: "XmlMDF_TagSourceDriver",
                           header: "XmlMDF_TagSourceDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDF_TagSourceDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDF_TagSourceDriver {.
    constructor, importcpp: "XmlMDF_TagSourceDriver(@)",
    header: "XmlMDF_TagSourceDriver.hxx".}
proc newEmpty*(this: XmlMDF_TagSourceDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_TagSourceDriver.hxx".}
proc paste*(this: XmlMDF_TagSourceDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_TagSourceDriver.hxx".}
proc paste*(this: XmlMDF_TagSourceDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_TagSourceDriver.hxx".}
type
  XmlMDF_TagSourceDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDF_TagSourceDriver::get_type_name(@)",
                            header: "XmlMDF_TagSourceDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDF_TagSourceDriver::get_type_descriptor(@)",
    header: "XmlMDF_TagSourceDriver.hxx".}
proc dynamicType*(this: XmlMDF_TagSourceDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMDF_TagSourceDriver.hxx".}
