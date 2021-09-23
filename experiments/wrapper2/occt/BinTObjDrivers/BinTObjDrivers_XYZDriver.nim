##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
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
  BinTObjDrivers_XYZDriver* {.importcpp: "BinTObjDrivers_XYZDriver",
                             header: "BinTObjDrivers_XYZDriver.hxx", bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDrivers_XYZDriver*(theMessageDriver: handle[Message_Messenger]): BinTObjDrivers_XYZDriver {.
    constructor, importcpp: "BinTObjDrivers_XYZDriver(@)",
    header: "BinTObjDrivers_XYZDriver.hxx".}
proc NewEmpty*(this: BinTObjDrivers_XYZDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinTObjDrivers_XYZDriver.hxx".}
proc Paste*(this: BinTObjDrivers_XYZDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinTObjDrivers_XYZDriver.hxx".}
proc Paste*(this: BinTObjDrivers_XYZDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_XYZDriver.hxx".}
type
  BinTObjDrivers_XYZDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinTObjDrivers_XYZDriver::get_type_name(@)",
                              header: "BinTObjDrivers_XYZDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinTObjDrivers_XYZDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_XYZDriver.hxx".}
proc DynamicType*(this: BinTObjDrivers_XYZDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinTObjDrivers_XYZDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_XYZDriver"
type
  Handle_BinTObjDrivers_XYZDriver* = handle[BinTObjDrivers_XYZDriver]

when defined(_MSC_VER):
  discard