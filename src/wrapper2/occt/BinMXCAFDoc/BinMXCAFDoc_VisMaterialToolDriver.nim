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

discard "forward decl of BinMXCAFDoc_VisMaterialToolDriver"
type
  HandleBinMXCAFDocVisMaterialToolDriver* = Handle[
      BinMXCAFDocVisMaterialToolDriver]

## ! Binary persistence driver for XCAFDoc_VisMaterialTool attribute.

type
  BinMXCAFDocVisMaterialToolDriver* {.importcpp: "BinMXCAFDoc_VisMaterialToolDriver", header: "BinMXCAFDoc_VisMaterialToolDriver.hxx",
                                     bycopy.} = object of BinMDF_ADriver ## ! Main constructor.

  BinMXCAFDocVisMaterialToolDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_VisMaterialToolDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_VisMaterialToolDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocVisMaterialToolDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc constructBinMXCAFDocVisMaterialToolDriver*(
    theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocVisMaterialToolDriver {.
    constructor, importcpp: "BinMXCAFDoc_VisMaterialToolDriver(@)",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocVisMaterialToolDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc paste*(this: BinMXCAFDocVisMaterialToolDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc paste*(this: BinMXCAFDocVisMaterialToolDriver;
           theSource: Handle[TDF_Attribute]; theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}

