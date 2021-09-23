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
discard "forward decl of BinMFunction_GraphNodeDriver"
discard "forward decl of BinMFunction_GraphNodeDriver"
type
  Handle_BinMFunction_GraphNodeDriver* = handle[BinMFunction_GraphNodeDriver]

## ! GraphNode attribute Driver.

type
  BinMFunction_GraphNodeDriver* {.importcpp: "BinMFunction_GraphNodeDriver",
                                 header: "BinMFunction_GraphNodeDriver.hxx",
                                 bycopy.} = object of BinMDF_ADriver


proc constructBinMFunction_GraphNodeDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMFunction_GraphNodeDriver {.
    constructor, importcpp: "BinMFunction_GraphNodeDriver(@)",
    header: "BinMFunction_GraphNodeDriver.hxx".}
proc NewEmpty*(this: BinMFunction_GraphNodeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMFunction_GraphNodeDriver.hxx".}
proc Paste*(this: BinMFunction_GraphNodeDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMFunction_GraphNodeDriver.hxx".}
proc Paste*(this: BinMFunction_GraphNodeDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_GraphNodeDriver.hxx".}
type
  BinMFunction_GraphNodeDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMFunction_GraphNodeDriver::get_type_name(@)",
                              header: "BinMFunction_GraphNodeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMFunction_GraphNodeDriver::get_type_descriptor(@)",
    header: "BinMFunction_GraphNodeDriver.hxx".}
proc DynamicType*(this: BinMFunction_GraphNodeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMFunction_GraphNodeDriver.hxx".}