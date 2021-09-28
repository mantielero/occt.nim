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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMXCAFDoc_AssemblyItemRefDriver"
discard "forward decl of BinMXCAFDoc_AssemblyItemRefDriver"
type
  HandleC1C1* = Handle[BinMXCAFDocAssemblyItemRefDriver]
  BinMXCAFDocAssemblyItemRefDriver* {.importcpp: "BinMXCAFDoc_AssemblyItemRefDriver", header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx",
                                     bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDocAssemblyItemRefDriver*(
    theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocAssemblyItemRefDriver {.
    constructor, importcpp: "BinMXCAFDoc_AssemblyItemRefDriver(@)",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocAssemblyItemRefDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc paste*(this: BinMXCAFDocAssemblyItemRefDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc paste*(this: BinMXCAFDocAssemblyItemRefDriver;
           theSource: Handle[TDF_Attribute]; theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
type
  BinMXCAFDocAssemblyItemRefDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_AssemblyItemRefDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_AssemblyItemRefDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocAssemblyItemRefDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_AssemblyItemRefDriver.hxx".}

























