##  Created on: 2017-02-16
##  Created by: Sergey NIKONOV
##  Copyright (c) 2005-2017 OPEN CASCADE SAS
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
discard "forward decl of BinMXCAFDoc_AssemblyItemRefDriver"
discard "forward decl of BinMXCAFDoc_AssemblyItemRefDriver"
type
  Handle_BinMXCAFDoc_AssemblyItemRefDriver* = handle[
      BinMXCAFDoc_AssemblyItemRefDriver]
  BinMXCAFDoc_AssemblyItemRefDriver* {.importcpp: "BinMXCAFDoc_AssemblyItemRefDriver", header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx",
                                      bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDoc_AssemblyItemRefDriver*(
    theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_AssemblyItemRefDriver {.
    constructor, importcpp: "BinMXCAFDoc_AssemblyItemRefDriver(@)",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_AssemblyItemRefDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_AssemblyItemRefDriver;
           theSource: BinObjMgt_Persistent; theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_AssemblyItemRefDriver;
           theSource: handle[TDF_Attribute]; theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
type
  BinMXCAFDoc_AssemblyItemRefDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_AssemblyItemRefDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_AssemblyItemRefDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_AssemblyItemRefDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}