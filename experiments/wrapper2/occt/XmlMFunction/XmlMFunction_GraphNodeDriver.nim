##  Created on: 2008-03-05
##  Created by: Vlad ROMASHKO
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMFunction_GraphNodeDriver"
discard "forward decl of XmlMFunction_GraphNodeDriver"
type
  HandleC1C1* = Handle[XmlMFunctionGraphNodeDriver]

## ! XML persistence driver for dependencies of a function.

type
  XmlMFunctionGraphNodeDriver* {.importcpp: "XmlMFunction_GraphNodeDriver",
                                header: "XmlMFunction_GraphNodeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMFunctionGraphNodeDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMFunctionGraphNodeDriver {.
    constructor, importcpp: "XmlMFunction_GraphNodeDriver(@)",
    header: "XmlMFunction_GraphNodeDriver.hxx".}
proc newEmpty*(this: XmlMFunctionGraphNodeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMFunction_GraphNodeDriver.hxx".}
proc paste*(this: XmlMFunctionGraphNodeDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_GraphNodeDriver.hxx".}
proc paste*(this: XmlMFunctionGraphNodeDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_GraphNodeDriver.hxx".}
type
  XmlMFunctionGraphNodeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMFunction_GraphNodeDriver::get_type_name(@)",
                            header: "XmlMFunction_GraphNodeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMFunction_GraphNodeDriver::get_type_descriptor(@)",
    header: "XmlMFunction_GraphNodeDriver.hxx".}
proc dynamicType*(this: XmlMFunctionGraphNodeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMFunction_GraphNodeDriver.hxx".}

























