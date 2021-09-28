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
discard "forward decl of BinMDataXtd_GeometryDriver"
discard "forward decl of BinMDataXtd_GeometryDriver"
type
  HandleC1C1* = Handle[BinMDataXtdGeometryDriver]

## ! Attribute Driver.

type
  BinMDataXtdGeometryDriver* {.importcpp: "BinMDataXtd_GeometryDriver",
                              header: "BinMDataXtd_GeometryDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataXtdGeometryDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataXtdGeometryDriver {.
    constructor, importcpp: "BinMDataXtd_GeometryDriver(@)",
    header: "BinMDataXtd_GeometryDriver.hxx".}
proc newEmpty*(this: BinMDataXtdGeometryDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataXtd_GeometryDriver.hxx".}
proc paste*(this: BinMDataXtdGeometryDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_GeometryDriver.hxx".}
proc paste*(this: BinMDataXtdGeometryDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_GeometryDriver.hxx".}
type
  BinMDataXtdGeometryDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataXtd_GeometryDriver::get_type_name(@)",
                            header: "BinMDataXtd_GeometryDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataXtd_GeometryDriver::get_type_descriptor(@)",
    header: "BinMDataXtd_GeometryDriver.hxx".}
proc dynamicType*(this: BinMDataXtdGeometryDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataXtd_GeometryDriver.hxx".}

























