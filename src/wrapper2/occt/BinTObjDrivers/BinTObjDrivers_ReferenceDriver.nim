##  Created on: 2004-11-24
##  Created by: Edward AGAPOV
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  ../TObj/TObj_Common, ../BinMDF/BinMDF_ADriver

type
  BinTObjDrivers_ReferenceDriver* {.importcpp: "BinTObjDrivers_ReferenceDriver", header: "BinTObjDrivers_ReferenceDriver.hxx",
                                   bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDrivers_ReferenceDriver*(
    theMessageDriver: handle[Message_Messenger]): BinTObjDrivers_ReferenceDriver {.
    constructor, importcpp: "BinTObjDrivers_ReferenceDriver(@)",
    header: "BinTObjDrivers_ReferenceDriver.hxx".}
proc NewEmpty*(this: BinTObjDrivers_ReferenceDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinTObjDrivers_ReferenceDriver.hxx".}
proc Paste*(this: BinTObjDrivers_ReferenceDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinTObjDrivers_ReferenceDriver.hxx".}
proc Paste*(this: BinTObjDrivers_ReferenceDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_ReferenceDriver.hxx".}
type
  BinTObjDrivers_ReferenceDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinTObjDrivers_ReferenceDriver::get_type_name(@)",
                              header: "BinTObjDrivers_ReferenceDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinTObjDrivers_ReferenceDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_ReferenceDriver.hxx".}
proc DynamicType*(this: BinTObjDrivers_ReferenceDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_ReferenceDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_ReferenceDriver"
type
  Handle_BinTObjDrivers_ReferenceDriver* = handle[BinTObjDrivers_ReferenceDriver]

when defined(_MSC_VER):
  discard