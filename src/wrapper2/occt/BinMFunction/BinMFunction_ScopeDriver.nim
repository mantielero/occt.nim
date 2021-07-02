##  Created on: 2008-05-11
##  Created by: Vlad ROMASHKO <vladislav.romashko@opencascade.com>
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
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMFunction_ScopeDriver"
discard "forward decl of BinMFunction_ScopeDriver"
type
  HandleBinMFunctionScopeDriver* = Handle[BinMFunctionScopeDriver]

## ! Scope attribute Driver.

type
  BinMFunctionScopeDriver* {.importcpp: "BinMFunction_ScopeDriver",
                            header: "BinMFunction_ScopeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMFunctionScopeDriver*(theMessageDriver: Handle[MessageMessenger]): BinMFunctionScopeDriver {.
    constructor, importcpp: "BinMFunction_ScopeDriver(@)",
    header: "BinMFunction_ScopeDriver.hxx".}
proc newEmpty*(this: BinMFunctionScopeDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMFunction_ScopeDriver.hxx".}
proc paste*(this: BinMFunctionScopeDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMFunction_ScopeDriver.hxx".}
proc paste*(this: BinMFunctionScopeDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_ScopeDriver.hxx".}
type
  BinMFunctionScopeDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMFunction_ScopeDriver::get_type_name(@)",
                            header: "BinMFunction_ScopeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMFunction_ScopeDriver::get_type_descriptor(@)",
    header: "BinMFunction_ScopeDriver.hxx".}
proc dynamicType*(this: BinMFunctionScopeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMFunction_ScopeDriver.hxx".}

