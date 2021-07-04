##  Created on: 2008-12-10
##  Created by: Pavel TELKOV
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
discard "forward decl of BinMXCAFDoc_DimTolDriver"
discard "forward decl of BinMXCAFDoc_DimTolDriver"
type
  Handle_BinMXCAFDoc_DimTolDriver* = handle[BinMXCAFDoc_DimTolDriver]
  BinMXCAFDoc_DimTolDriver* {.importcpp: "BinMXCAFDoc_DimTolDriver",
                             header: "BinMXCAFDoc_DimTolDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDoc_DimTolDriver*(theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_DimTolDriver {.
    constructor, importcpp: "BinMXCAFDoc_DimTolDriver(@)",
    header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_DimTolDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_DimTolDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_DimTolDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_DimTolDriver.hxx".}
type
  BinMXCAFDoc_DimTolDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_DimTolDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_DimTolDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_DimTolDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMXCAFDoc_DimTolDriver.hxx".}