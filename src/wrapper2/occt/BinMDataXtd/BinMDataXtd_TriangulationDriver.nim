##  Created on: 2016-11-10
##  Created by: Anton KOZULIN
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of BinMDataXtd_TriangulationDriver"
type
  Handle_BinMDataXtd_TriangulationDriver* = handle[BinMDataXtd_TriangulationDriver]

## ! TDataXtd_Triangulation attribute bin Driver.

type
  BinMDataXtd_TriangulationDriver* {.importcpp: "BinMDataXtd_TriangulationDriver", header: "BinMDataXtd_TriangulationDriver.hxx",
                                    bycopy.} = object of BinMDF_ADriver


proc constructBinMDataXtd_TriangulationDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMDataXtd_TriangulationDriver {.
    constructor, importcpp: "BinMDataXtd_TriangulationDriver(@)",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc NewEmpty*(this: BinMDataXtd_TriangulationDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc Paste*(this: BinMDataXtd_TriangulationDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataXtd_TriangulationDriver.hxx".}
proc Paste*(this: BinMDataXtd_TriangulationDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_TriangulationDriver.hxx".}
type
  BinMDataXtd_TriangulationDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDataXtd_TriangulationDriver::get_type_name(@)",
                              header: "BinMDataXtd_TriangulationDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDataXtd_TriangulationDriver::get_type_descriptor(@)",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc DynamicType*(this: BinMDataXtd_TriangulationDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataXtd_TriangulationDriver.hxx".}