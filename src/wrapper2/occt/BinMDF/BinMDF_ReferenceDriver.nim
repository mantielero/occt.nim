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

import
  ../Standard/Standard, ../Standard/Standard_Type, BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDF_ReferenceDriver"
discard "forward decl of BinMDF_ReferenceDriver"
type
  Handle_BinMDF_ReferenceDriver* = handle[BinMDF_ReferenceDriver]

## ! Reference attribute Driver.

type
  BinMDF_ReferenceDriver* {.importcpp: "BinMDF_ReferenceDriver",
                           header: "BinMDF_ReferenceDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDF_ReferenceDriver*(theMessageDriver: handle[Message_Messenger]): BinMDF_ReferenceDriver {.
    constructor, importcpp: "BinMDF_ReferenceDriver(@)",
    header: "BinMDF_ReferenceDriver.hxx".}
proc NewEmpty*(this: BinMDF_ReferenceDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_ReferenceDriver.hxx".}
proc Paste*(this: BinMDF_ReferenceDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDF_ReferenceDriver.hxx".}
proc Paste*(this: BinMDF_ReferenceDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_ReferenceDriver.hxx".}
type
  BinMDF_ReferenceDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDF_ReferenceDriver::get_type_name(@)",
                              header: "BinMDF_ReferenceDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDF_ReferenceDriver::get_type_descriptor(@)",
    header: "BinMDF_ReferenceDriver.hxx".}
proc DynamicType*(this: BinMDF_ReferenceDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMDF_ReferenceDriver.hxx".}