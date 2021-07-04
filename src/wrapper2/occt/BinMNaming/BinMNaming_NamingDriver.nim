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
discard "forward decl of BinMNaming_NamingDriver"
discard "forward decl of BinMNaming_NamingDriver"
type
  Handle_BinMNaming_NamingDriver* = handle[BinMNaming_NamingDriver]

## ! Naming  Attribute Driver.

type
  BinMNaming_NamingDriver* {.importcpp: "BinMNaming_NamingDriver",
                            header: "BinMNaming_NamingDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMNaming_NamingDriver*(theMessageDriver: handle[Message_Messenger]): BinMNaming_NamingDriver {.
    constructor, importcpp: "BinMNaming_NamingDriver(@)",
    header: "BinMNaming_NamingDriver.hxx".}
proc NewEmpty*(this: BinMNaming_NamingDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMNaming_NamingDriver.hxx".}
proc Paste*(this: BinMNaming_NamingDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMNaming_NamingDriver.hxx".}
proc Paste*(this: BinMNaming_NamingDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMNaming_NamingDriver.hxx".}
type
  BinMNaming_NamingDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMNaming_NamingDriver::get_type_name(@)",
                              header: "BinMNaming_NamingDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMNaming_NamingDriver::get_type_descriptor(@)",
    header: "BinMNaming_NamingDriver.hxx".}
proc DynamicType*(this: BinMNaming_NamingDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMNaming_NamingDriver.hxx".}