##  Created on: 2002-10-30
##  Created by: Michael SAZONOV
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
discard "forward decl of BinMDF_ReferenceDriver"
discard "forward decl of BinMDF_ReferenceDriver"
type
  HandleBinMDF_ReferenceDriver* = Handle[BinMDF_ReferenceDriver]

## ! Reference attribute Driver.

type
  BinMDF_ReferenceDriver* {.importcpp: "BinMDF_ReferenceDriver",
                           header: "BinMDF_ReferenceDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDF_ReferenceDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDF_ReferenceDriver {.
    constructor, importcpp: "BinMDF_ReferenceDriver(@)",
    header: "BinMDF_ReferenceDriver.hxx".}
proc newEmpty*(this: BinMDF_ReferenceDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_ReferenceDriver.hxx".}
proc paste*(this: BinMDF_ReferenceDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDF_ReferenceDriver.hxx".}
proc paste*(this: BinMDF_ReferenceDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_ReferenceDriver.hxx".}
type
  BinMDF_ReferenceDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDF_ReferenceDriver::get_type_name(@)",
                            header: "BinMDF_ReferenceDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDF_ReferenceDriver::get_type_descriptor(@)",
    header: "BinMDF_ReferenceDriver.hxx".}
proc dynamicType*(this: BinMDF_ReferenceDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMDF_ReferenceDriver.hxx".}

