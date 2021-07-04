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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_TreeNodeDriver"
discard "forward decl of BinMDataStd_TreeNodeDriver"
type
  Handle_BinMDataStd_TreeNodeDriver* = handle[BinMDataStd_TreeNodeDriver]

## ! Attribute Driver.

type
  BinMDataStd_TreeNodeDriver* {.importcpp: "BinMDataStd_TreeNodeDriver",
                               header: "BinMDataStd_TreeNodeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStd_TreeNodeDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMDataStd_TreeNodeDriver {.
    constructor, importcpp: "BinMDataStd_TreeNodeDriver(@)",
    header: "BinMDataStd_TreeNodeDriver.hxx".}
proc NewEmpty*(this: BinMDataStd_TreeNodeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_TreeNodeDriver.hxx".}
proc Paste*(this: BinMDataStd_TreeNodeDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_TreeNodeDriver.hxx".}
proc Paste*(this: BinMDataStd_TreeNodeDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_TreeNodeDriver.hxx".}
type
  BinMDataStd_TreeNodeDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDataStd_TreeNodeDriver::get_type_name(@)",
                              header: "BinMDataStd_TreeNodeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDataStd_TreeNodeDriver::get_type_descriptor(@)",
    header: "BinMDataStd_TreeNodeDriver.hxx".}
proc DynamicType*(this: BinMDataStd_TreeNodeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_TreeNodeDriver.hxx".}