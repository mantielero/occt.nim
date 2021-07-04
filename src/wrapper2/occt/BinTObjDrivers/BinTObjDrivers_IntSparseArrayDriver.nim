##  Created on: 2007-03-30
##  Created by: Michael SAZONOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  BinTObjDrivers_IntSparseArrayDriver* {.importcpp: "BinTObjDrivers_IntSparseArrayDriver", header: "BinTObjDrivers_IntSparseArrayDriver.hxx",
                                        bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDrivers_IntSparseArrayDriver*(
    theMessageDriver: handle[Message_Messenger]): BinTObjDrivers_IntSparseArrayDriver {.
    constructor, importcpp: "BinTObjDrivers_IntSparseArrayDriver(@)",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc NewEmpty*(this: BinTObjDrivers_IntSparseArrayDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc Paste*(this: BinTObjDrivers_IntSparseArrayDriver;
           theSource: BinObjMgt_Persistent; theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc Paste*(this: BinTObjDrivers_IntSparseArrayDriver;
           theSource: handle[TDF_Attribute]; theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
type
  BinTObjDrivers_IntSparseArrayDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinTObjDrivers_IntSparseArrayDriver::get_type_name(@)",
                              header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinTObjDrivers_IntSparseArrayDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
proc DynamicType*(this: BinTObjDrivers_IntSparseArrayDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_IntSparseArrayDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_IntSparseArrayDriver"
type
  Handle_BinTObjDrivers_IntSparseArrayDriver* = handle[
      BinTObjDrivers_IntSparseArrayDriver]

when defined(_MSC_VER):
  discard