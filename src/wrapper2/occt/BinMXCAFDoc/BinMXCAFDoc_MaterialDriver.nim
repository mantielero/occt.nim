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
discard "forward decl of BinMXCAFDoc_MaterialDriver"
discard "forward decl of BinMXCAFDoc_MaterialDriver"
type
  HandleBinMXCAFDocMaterialDriver* = Handle[BinMXCAFDocMaterialDriver]
  BinMXCAFDocMaterialDriver* {.importcpp: "BinMXCAFDoc_MaterialDriver",
                              header: "BinMXCAFDoc_MaterialDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDocMaterialDriver*(theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocMaterialDriver {.
    constructor, importcpp: "BinMXCAFDoc_MaterialDriver(@)",
    header: "BinMXCAFDoc_MaterialDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocMaterialDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMXCAFDoc_MaterialDriver.hxx".}
proc paste*(this: BinMXCAFDocMaterialDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_MaterialDriver.hxx".}
proc paste*(this: BinMXCAFDocMaterialDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_MaterialDriver.hxx".}
type
  BinMXCAFDocMaterialDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_MaterialDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_MaterialDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_MaterialDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_MaterialDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocMaterialDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_MaterialDriver.hxx".}

