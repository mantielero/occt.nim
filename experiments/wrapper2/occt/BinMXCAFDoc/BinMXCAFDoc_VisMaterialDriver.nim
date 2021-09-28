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

discard "forward decl of BinMXCAFDoc_VisMaterialDriver"
type
  HandleC1C1* = Handle[BinMXCAFDocVisMaterialDriver]

## ! Binary persistence driver for XCAFDoc_VisMaterial attribute.

type
  BinMXCAFDocVisMaterialDriver* {.importcpp: "BinMXCAFDoc_VisMaterialDriver",
                                 header: "BinMXCAFDoc_VisMaterialDriver.hxx",
                                 bycopy.} = object of BinMDF_ADriver ## ! Main constructor.

  BinMXCAFDocVisMaterialDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_VisMaterialDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_VisMaterialDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocVisMaterialDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
const
  BinMXCAFDocVisMaterialDriverMaterialVersionMajor1* = 1
  BinMXCAFDocVisMaterialDriverMaterialVersionMinor0* = 0
  BinMXCAFDocVisMaterialDriverMaterialVersionMinor1* = 1 ## !< added IOR
  BinMXCAFDocVisMaterialDriverMaterialVersionMajor* = BinMXCAFDocVisMaterialDriverMaterialVersionMajor1
  BinMXCAFDocVisMaterialDriverMaterialVersionMinor* = BinMXCAFDocVisMaterialDriverMaterialVersionMinor1

proc constructBinMXCAFDocVisMaterialDriver*(
    theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocVisMaterialDriver {.
    constructor, importcpp: "BinMXCAFDoc_VisMaterialDriver(@)",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocVisMaterialDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc paste*(this: BinMXCAFDocVisMaterialDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialDriver.hxx".}
proc paste*(this: BinMXCAFDocVisMaterialDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialDriver.hxx".}

























