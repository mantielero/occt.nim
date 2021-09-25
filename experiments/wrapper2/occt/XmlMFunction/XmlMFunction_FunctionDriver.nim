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
discard "forward decl of XmlMFunction_FunctionDriver"
discard "forward decl of XmlMFunction_FunctionDriver"
type
  HandleXmlMFunctionFunctionDriver* = Handle[XmlMFunctionFunctionDriver]

## ! Attribute Driver.

type
  XmlMFunctionFunctionDriver* {.importcpp: "XmlMFunction_FunctionDriver",
                               header: "XmlMFunction_FunctionDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMFunctionFunctionDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMFunctionFunctionDriver {.
    constructor, importcpp: "XmlMFunction_FunctionDriver(@)",
    header: "XmlMFunction_FunctionDriver.hxx".}
proc newEmpty*(this: XmlMFunctionFunctionDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMFunction_FunctionDriver.hxx".}
proc paste*(this: XmlMFunctionFunctionDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_FunctionDriver.hxx".}
proc paste*(this: XmlMFunctionFunctionDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_FunctionDriver.hxx".}
type
  XmlMFunctionFunctionDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMFunction_FunctionDriver::get_type_name(@)",
                            header: "XmlMFunction_FunctionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMFunction_FunctionDriver::get_type_descriptor(@)",
    header: "XmlMFunction_FunctionDriver.hxx".}
proc dynamicType*(this: XmlMFunctionFunctionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMFunction_FunctionDriver.hxx".}
