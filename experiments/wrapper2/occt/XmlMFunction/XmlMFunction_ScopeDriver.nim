##  Created on: 2008-03-04
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
discard "forward decl of XmlMFunction_ScopeDriver"
discard "forward decl of XmlMFunction_ScopeDriver"
type
  HandleXmlMFunctionScopeDriver* = Handle[XmlMFunctionScopeDriver]

## ! XML persistence driver for a scope of functions.

type
  XmlMFunctionScopeDriver* {.importcpp: "XmlMFunction_ScopeDriver",
                            header: "XmlMFunction_ScopeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMFunctionScopeDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMFunctionScopeDriver {.
    constructor, importcpp: "XmlMFunction_ScopeDriver(@)",
    header: "XmlMFunction_ScopeDriver.hxx".}
proc newEmpty*(this: XmlMFunctionScopeDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMFunction_ScopeDriver.hxx".}
proc paste*(this: XmlMFunctionScopeDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_ScopeDriver.hxx".}
proc paste*(this: XmlMFunctionScopeDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_ScopeDriver.hxx".}
type
  XmlMFunctionScopeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMFunction_ScopeDriver::get_type_name(@)",
                            header: "XmlMFunction_ScopeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMFunction_ScopeDriver::get_type_descriptor(@)",
    header: "XmlMFunction_ScopeDriver.hxx".}
proc dynamicType*(this: XmlMFunctionScopeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMFunction_ScopeDriver.hxx".}
