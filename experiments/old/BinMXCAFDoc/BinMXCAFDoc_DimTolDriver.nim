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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMXCAFDoc_DimTolDriver"
discard "forward decl of BinMXCAFDoc_DimTolDriver"
type
  HandleC1C1* = Handle[BinMXCAFDocDimTolDriver]
  BinMXCAFDocDimTolDriver* {.importcpp: "BinMXCAFDoc_DimTolDriver",
                            header: "BinMXCAFDoc_DimTolDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDocDimTolDriver*(theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocDimTolDriver {.
    constructor, importcpp: "BinMXCAFDoc_DimTolDriver(@)",
    header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocDimTolDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc paste*(this: BinMXCAFDocDimTolDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc paste*(this: BinMXCAFDocDimTolDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_DimTolDriver.hxx".}
type
  BinMXCAFDocDimTolDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_DimTolDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_DimTolDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_DimTolDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocDimTolDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMXCAFDoc_DimTolDriver.hxx".}

























