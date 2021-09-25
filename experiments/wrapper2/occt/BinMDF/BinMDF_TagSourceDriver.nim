##  Created on: 2002-11-19
##  Created by: Edward AGAPOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of BinMDF_TagSourceDriver"
discard "forward decl of BinMDF_TagSourceDriver"
type
  HandleBinMDF_TagSourceDriver* = Handle[BinMDF_TagSourceDriver]

## ! TDF_TagSource Driver.

type
  BinMDF_TagSourceDriver* {.importcpp: "BinMDF_TagSourceDriver",
                           header: "BinMDF_TagSourceDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDF_TagSourceDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDF_TagSourceDriver {.
    constructor, importcpp: "BinMDF_TagSourceDriver(@)",
    header: "BinMDF_TagSourceDriver.hxx".}
proc newEmpty*(this: BinMDF_TagSourceDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_TagSourceDriver.hxx".}
proc paste*(this: BinMDF_TagSourceDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_TagSourceDriver.hxx".}
proc paste*(this: BinMDF_TagSourceDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_TagSourceDriver.hxx".}
type
  BinMDF_TagSourceDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDF_TagSourceDriver::get_type_name(@)",
                            header: "BinMDF_TagSourceDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDF_TagSourceDriver::get_type_descriptor(@)",
    header: "BinMDF_TagSourceDriver.hxx".}
proc dynamicType*(this: BinMDF_TagSourceDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMDF_TagSourceDriver.hxx".}
