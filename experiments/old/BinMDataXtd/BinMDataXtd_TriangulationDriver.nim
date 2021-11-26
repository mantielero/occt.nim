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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataXtd_TriangulationDriver"
type
  HandleC1C1* = Handle[BinMDataXtdTriangulationDriver]

## ! TDataXtd_Triangulation attribute bin Driver.

type
  BinMDataXtdTriangulationDriver* {.importcpp: "BinMDataXtd_TriangulationDriver", header: "BinMDataXtd_TriangulationDriver.hxx",
                                   bycopy.} = object of BinMDF_ADriver


proc constructBinMDataXtdTriangulationDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataXtdTriangulationDriver {.
    constructor, importcpp: "BinMDataXtd_TriangulationDriver(@)",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc newEmpty*(this: BinMDataXtdTriangulationDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc paste*(this: BinMDataXtdTriangulationDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_TriangulationDriver.hxx".}
proc paste*(this: BinMDataXtdTriangulationDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_TriangulationDriver.hxx".}
type
  BinMDataXtdTriangulationDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataXtd_TriangulationDriver::get_type_name(@)",
                            header: "BinMDataXtd_TriangulationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataXtd_TriangulationDriver::get_type_descriptor(@)",
    header: "BinMDataXtd_TriangulationDriver.hxx".}
proc dynamicType*(this: BinMDataXtdTriangulationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataXtd_TriangulationDriver.hxx".}

























