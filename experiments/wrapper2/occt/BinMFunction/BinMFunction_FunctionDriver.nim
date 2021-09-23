##  Created on: 2004-05-13
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMFunction_FunctionDriver"
discard "forward decl of BinMFunction_FunctionDriver"
type
  Handle_BinMFunction_FunctionDriver* = handle[BinMFunction_FunctionDriver]

## ! Function attribute Driver.

type
  BinMFunction_FunctionDriver* {.importcpp: "BinMFunction_FunctionDriver",
                                header: "BinMFunction_FunctionDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMFunction_FunctionDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMFunction_FunctionDriver {.
    constructor, importcpp: "BinMFunction_FunctionDriver(@)",
    header: "BinMFunction_FunctionDriver.hxx".}
proc NewEmpty*(this: BinMFunction_FunctionDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMFunction_FunctionDriver.hxx".}
proc Paste*(this: BinMFunction_FunctionDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMFunction_FunctionDriver.hxx".}
proc Paste*(this: BinMFunction_FunctionDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_FunctionDriver.hxx".}
type
  BinMFunction_FunctionDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMFunction_FunctionDriver::get_type_name(@)",
                              header: "BinMFunction_FunctionDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMFunction_FunctionDriver::get_type_descriptor(@)",
    header: "BinMFunction_FunctionDriver.hxx".}
proc DynamicType*(this: BinMFunction_FunctionDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMFunction_FunctionDriver.hxx".}