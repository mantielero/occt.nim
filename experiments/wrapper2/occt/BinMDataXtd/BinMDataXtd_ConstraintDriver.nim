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
discard "forward decl of BinMDataXtd_ConstraintDriver"
discard "forward decl of BinMDataXtd_ConstraintDriver"
type
  Handle_BinMDataXtd_ConstraintDriver* = handle[BinMDataXtd_ConstraintDriver]

## ! Attribute Driver.

type
  BinMDataXtd_ConstraintDriver* {.importcpp: "BinMDataXtd_ConstraintDriver",
                                 header: "BinMDataXtd_ConstraintDriver.hxx",
                                 bycopy.} = object of BinMDF_ADriver


proc constructBinMDataXtd_ConstraintDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMDataXtd_ConstraintDriver {.
    constructor, importcpp: "BinMDataXtd_ConstraintDriver(@)",
    header: "BinMDataXtd_ConstraintDriver.hxx".}
proc NewEmpty*(this: BinMDataXtd_ConstraintDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataXtd_ConstraintDriver.hxx".}
proc Paste*(this: BinMDataXtd_ConstraintDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataXtd_ConstraintDriver.hxx".}
proc Paste*(this: BinMDataXtd_ConstraintDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_ConstraintDriver.hxx".}
type
  BinMDataXtd_ConstraintDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDataXtd_ConstraintDriver::get_type_name(@)",
                              header: "BinMDataXtd_ConstraintDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDataXtd_ConstraintDriver::get_type_descriptor(@)",
    header: "BinMDataXtd_ConstraintDriver.hxx".}
proc DynamicType*(this: BinMDataXtd_ConstraintDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataXtd_ConstraintDriver.hxx".}