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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMFunction_FunctionDriver"
discard "forward decl of BinMFunction_FunctionDriver"
type
  HandleBinMFunctionFunctionDriver* = Handle[BinMFunctionFunctionDriver]

## ! Function attribute Driver.

type
  BinMFunctionFunctionDriver* {.importcpp: "BinMFunction_FunctionDriver",
                               header: "BinMFunction_FunctionDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMFunctionFunctionDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMFunctionFunctionDriver {.
    constructor, importcpp: "BinMFunction_FunctionDriver(@)",
    header: "BinMFunction_FunctionDriver.hxx".}
proc newEmpty*(this: BinMFunctionFunctionDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMFunction_FunctionDriver.hxx".}
proc paste*(this: BinMFunctionFunctionDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMFunction_FunctionDriver.hxx".}
proc paste*(this: BinMFunctionFunctionDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMFunction_FunctionDriver.hxx".}
type
  BinMFunctionFunctionDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMFunction_FunctionDriver::get_type_name(@)",
                            header: "BinMFunction_FunctionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMFunction_FunctionDriver::get_type_descriptor(@)",
    header: "BinMFunction_FunctionDriver.hxx".}
proc dynamicType*(this: BinMFunctionFunctionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMFunction_FunctionDriver.hxx".}

