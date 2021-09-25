##  Created on: 2001-09-04
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
discard "forward decl of XmlMDF_ReferenceDriver"
discard "forward decl of XmlMDF_ReferenceDriver"
type
  HandleXmlMDF_ReferenceDriver* = Handle[XmlMDF_ReferenceDriver]

## ! Attribute Driver.

type
  XmlMDF_ReferenceDriver* {.importcpp: "XmlMDF_ReferenceDriver",
                           header: "XmlMDF_ReferenceDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDF_ReferenceDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDF_ReferenceDriver {.
    constructor, importcpp: "XmlMDF_ReferenceDriver(@)",
    header: "XmlMDF_ReferenceDriver.hxx".}
proc newEmpty*(this: XmlMDF_ReferenceDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_ReferenceDriver.hxx".}
proc paste*(this: XmlMDF_ReferenceDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_ReferenceDriver.hxx".}
proc paste*(this: XmlMDF_ReferenceDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_ReferenceDriver.hxx".}
type
  XmlMDF_ReferenceDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDF_ReferenceDriver::get_type_name(@)",
                            header: "XmlMDF_ReferenceDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDF_ReferenceDriver::get_type_descriptor(@)",
    header: "XmlMDF_ReferenceDriver.hxx".}
proc dynamicType*(this: XmlMDF_ReferenceDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMDF_ReferenceDriver.hxx".}
