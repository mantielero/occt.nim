##  Created on: 2017-02-13
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

discard "forward decl of BinMXCAFDoc_NoteBinDataDriver"
discard "forward decl of BinMXCAFDoc_NoteBinDataDriver"
type
  HandleBinMXCAFDocNoteBinDataDriver* = Handle[BinMXCAFDocNoteBinDataDriver]
  BinMXCAFDocNoteBinDataDriver* {.importcpp: "BinMXCAFDoc_NoteBinDataDriver",
                                 header: "BinMXCAFDoc_NoteBinDataDriver.hxx",
                                 bycopy.} = object of BinMXCAFDocNoteDriver


proc constructBinMXCAFDocNoteBinDataDriver*(
    theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocNoteBinDataDriver {.
    constructor, importcpp: "BinMXCAFDoc_NoteBinDataDriver(@)",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocNoteBinDataDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc paste*(this: BinMXCAFDocNoteBinDataDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc paste*(this: BinMXCAFDocNoteBinDataDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
type
  BinMXCAFDocNoteBinDataDriverbaseType* = BinMXCAFDocNoteDriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_NoteBinDataDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_NoteBinDataDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocNoteBinDataDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}

