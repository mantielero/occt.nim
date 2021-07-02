##  Created on: 2001-08-24
##  Created by: Alexander GRIGORIEV
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
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_TreeNodeDriver"
discard "forward decl of BinMDataStd_TreeNodeDriver"
type
  HandleBinMDataStdTreeNodeDriver* = Handle[BinMDataStdTreeNodeDriver]

## ! Attribute Driver.

type
  BinMDataStdTreeNodeDriver* {.importcpp: "BinMDataStd_TreeNodeDriver",
                              header: "BinMDataStd_TreeNodeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdTreeNodeDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataStdTreeNodeDriver {.
    constructor, importcpp: "BinMDataStd_TreeNodeDriver(@)",
    header: "BinMDataStd_TreeNodeDriver.hxx".}
proc newEmpty*(this: BinMDataStdTreeNodeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_TreeNodeDriver.hxx".}
proc paste*(this: BinMDataStdTreeNodeDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_TreeNodeDriver.hxx".}
proc paste*(this: BinMDataStdTreeNodeDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_TreeNodeDriver.hxx".}
type
  BinMDataStdTreeNodeDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_TreeNodeDriver::get_type_name(@)",
                            header: "BinMDataStd_TreeNodeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_TreeNodeDriver::get_type_descriptor(@)",
    header: "BinMDataStd_TreeNodeDriver.hxx".}
proc dynamicType*(this: BinMDataStdTreeNodeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_TreeNodeDriver.hxx".}

