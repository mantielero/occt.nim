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
discard "forward decl of BinMFunction_GraphNodeDriver"
discard "forward decl of BinMFunction_GraphNodeDriver"
type
  HandleC1C1* = Handle[BinMFunctionGraphNodeDriver]

## ! GraphNode attribute Driver.

type
  BinMFunctionGraphNodeDriver* {.importcpp: "BinMFunction_GraphNodeDriver",
                                header: "BinMFunction_GraphNodeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMFunctionGraphNodeDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMFunctionGraphNodeDriver {.
    constructor, importcpp: "BinMFunction_GraphNodeDriver(@)",
    header: "BinMFunction_GraphNodeDriver.hxx".}
proc newEmpty*(this: BinMFunctionGraphNodeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMFunction_GraphNodeDriver.hxx".}
proc paste*(this: BinMFunctionGraphNodeDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_GraphNodeDriver.hxx".}
proc paste*(this: BinMFunctionGraphNodeDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_GraphNodeDriver.hxx".}
type
  BinMFunctionGraphNodeDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMFunction_GraphNodeDriver::get_type_name(@)",
                            header: "BinMFunction_GraphNodeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMFunction_GraphNodeDriver::get_type_descriptor(@)",
    header: "BinMFunction_GraphNodeDriver.hxx".}
proc dynamicType*(this: BinMFunctionGraphNodeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMFunction_GraphNodeDriver.hxx".}

























