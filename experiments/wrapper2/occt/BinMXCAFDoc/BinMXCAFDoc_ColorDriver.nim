##  Created on: 2005-05-17
##  Created by: Eugeny NAPALKOV <eugeny.napalkov@opencascade.com>
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
discard "forward decl of BinMXCAFDoc_ColorDriver"
discard "forward decl of BinMXCAFDoc_ColorDriver"
type
  HandleC1C1* = Handle[BinMXCAFDocColorDriver]
  BinMXCAFDocColorDriver* {.importcpp: "BinMXCAFDoc_ColorDriver",
                           header: "BinMXCAFDoc_ColorDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMXCAFDocColorDriver*(theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocColorDriver {.
    constructor, importcpp: "BinMXCAFDoc_ColorDriver(@)",
    header: "BinMXCAFDoc_ColorDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocColorDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMXCAFDoc_ColorDriver.hxx".}
proc paste*(this: BinMXCAFDocColorDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_ColorDriver.hxx".}
proc paste*(this: BinMXCAFDocColorDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_ColorDriver.hxx".}
type
  BinMXCAFDocColorDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_ColorDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_ColorDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_ColorDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_ColorDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocColorDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMXCAFDoc_ColorDriver.hxx".}

























