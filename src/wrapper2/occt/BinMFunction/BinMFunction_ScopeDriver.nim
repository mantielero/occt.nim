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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMFunction_ScopeDriver"
discard "forward decl of BinMFunction_ScopeDriver"
type
  Handle_BinMFunction_ScopeDriver* = handle[BinMFunction_ScopeDriver]

## ! Scope attribute Driver.

type
  BinMFunction_ScopeDriver* {.importcpp: "BinMFunction_ScopeDriver",
                             header: "BinMFunction_ScopeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMFunction_ScopeDriver*(theMessageDriver: handle[Message_Messenger]): BinMFunction_ScopeDriver {.
    constructor, importcpp: "BinMFunction_ScopeDriver(@)",
    header: "BinMFunction_ScopeDriver.hxx".}
proc NewEmpty*(this: BinMFunction_ScopeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMFunction_ScopeDriver.hxx".}
proc Paste*(this: BinMFunction_ScopeDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMFunction_ScopeDriver.hxx".}
proc Paste*(this: BinMFunction_ScopeDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_ScopeDriver.hxx".}
type
  BinMFunction_ScopeDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMFunction_ScopeDriver::get_type_name(@)",
                              header: "BinMFunction_ScopeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMFunction_ScopeDriver::get_type_descriptor(@)",
    header: "BinMFunction_ScopeDriver.hxx".}
proc DynamicType*(this: BinMFunction_ScopeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMFunction_ScopeDriver.hxx".}