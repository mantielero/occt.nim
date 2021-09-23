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

import
  BinMXCAFDoc_NoteDriver

discard "forward decl of BinMXCAFDoc_NoteBinDataDriver"
discard "forward decl of BinMXCAFDoc_NoteBinDataDriver"
type
  Handle_BinMXCAFDoc_NoteBinDataDriver* = handle[BinMXCAFDoc_NoteBinDataDriver]
  BinMXCAFDoc_NoteBinDataDriver* {.importcpp: "BinMXCAFDoc_NoteBinDataDriver",
                                  header: "BinMXCAFDoc_NoteBinDataDriver.hxx",
                                  bycopy.} = object of BinMXCAFDoc_NoteDriver


proc constructBinMXCAFDoc_NoteBinDataDriver*(
    theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_NoteBinDataDriver {.
    constructor, importcpp: "BinMXCAFDoc_NoteBinDataDriver(@)",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_NoteBinDataDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_NoteBinDataDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_NoteBinDataDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
type
  BinMXCAFDoc_NoteBinDataDriverbase_type* = BinMXCAFDoc_NoteDriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_NoteBinDataDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_NoteBinDataDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_NoteBinDataDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_NoteBinDataDriver.hxx".}