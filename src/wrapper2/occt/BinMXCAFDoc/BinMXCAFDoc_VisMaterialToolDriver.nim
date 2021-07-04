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
  ../BinMDF/BinMDF_ADriver

discard "forward decl of BinMXCAFDoc_VisMaterialToolDriver"
type
  Handle_BinMXCAFDoc_VisMaterialToolDriver* = handle[
      BinMXCAFDoc_VisMaterialToolDriver]

## ! Binary persistence driver for XCAFDoc_VisMaterialTool attribute.

type
  BinMXCAFDoc_VisMaterialToolDriver* {.importcpp: "BinMXCAFDoc_VisMaterialToolDriver", header: "BinMXCAFDoc_VisMaterialToolDriver.hxx",
                                      bycopy.} = object of BinMDF_ADriver ## ! Main
                                                                     ## constructor.

  BinMXCAFDoc_VisMaterialToolDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_VisMaterialToolDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_VisMaterialToolDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_VisMaterialToolDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc constructBinMXCAFDoc_VisMaterialToolDriver*(
    theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_VisMaterialToolDriver {.
    constructor, importcpp: "BinMXCAFDoc_VisMaterialToolDriver(@)",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_VisMaterialToolDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_VisMaterialToolDriver;
           theSource: BinObjMgt_Persistent; theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_VisMaterialToolDriver;
           theSource: handle[TDF_Attribute]; theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_VisMaterialToolDriver.hxx".}