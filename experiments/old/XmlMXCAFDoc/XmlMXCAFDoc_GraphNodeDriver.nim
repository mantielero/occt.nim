##  Created on: 2001-09-11
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
discard "forward decl of XmlMXCAFDoc_GraphNodeDriver"
discard "forward decl of XmlMXCAFDoc_GraphNodeDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocGraphNodeDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocGraphNodeDriver* {.importcpp: "XmlMXCAFDoc_GraphNodeDriver",
                               header: "XmlMXCAFDoc_GraphNodeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDocGraphNodeDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocGraphNodeDriver {.
    constructor, importcpp: "XmlMXCAFDoc_GraphNodeDriver(@)",
    header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocGraphNodeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
proc paste*(this: XmlMXCAFDocGraphNodeDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
proc paste*(this: XmlMXCAFDocGraphNodeDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
type
  XmlMXCAFDocGraphNodeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_GraphNodeDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_GraphNodeDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocGraphNodeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_GraphNodeDriver.hxx".}

























