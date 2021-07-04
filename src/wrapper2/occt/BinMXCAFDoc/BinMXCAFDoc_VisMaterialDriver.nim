##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../BinMDF/BinMDF_ADriver, ../Standard/Standard_Boolean,
  ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of BinMXCAFDoc_VisMaterialDriver"
type
  Handle_BinMXCAFDoc_VisMaterialDriver* = handle[BinMXCAFDoc_VisMaterialDriver]

## ! Binary persistence driver for XCAFDoc_VisMaterial attribute.

type
  BinMXCAFDoc_VisMaterialDriver* {.importcpp: "BinMXCAFDoc_VisMaterialDriver",
                                  header: "BinMXCAFDoc_VisMaterialDriver.hxx",
                                  bycopy.} = object of BinMDF_ADriver ## ! Main constructor.

  BinMXCAFDoc_VisMaterialDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_VisMaterialDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_VisMaterialDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_VisMaterialDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
const
  BinMXCAFDoc_VisMaterialDriverMaterialVersionMajor_1* = 1
  BinMXCAFDoc_VisMaterialDriverMaterialVersionMinor_0* = 0
  BinMXCAFDoc_VisMaterialDriverMaterialVersionMinor_1* = 1 ## !< added IOR
  BinMXCAFDoc_VisMaterialDriverMaterialVersionMajor* = BinMXCAFDoc_VisMaterialDriverMaterialVersionMajor_1
  BinMXCAFDoc_VisMaterialDriverMaterialVersionMinor* = BinMXCAFDoc_VisMaterialDriverMaterialVersionMinor_1

proc constructBinMXCAFDoc_VisMaterialDriver*(
    theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_VisMaterialDriver {.
    constructor, importcpp: "BinMXCAFDoc_VisMaterialDriver(@)",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_VisMaterialDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_VisMaterialDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_VisMaterialDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialDriver.hxx".}