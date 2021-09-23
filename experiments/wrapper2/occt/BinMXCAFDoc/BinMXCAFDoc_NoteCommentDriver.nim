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

discard "forward decl of BinMXCAFDoc_NoteCommentDriver"
discard "forward decl of BinMXCAFDoc_NoteCommentDriver"
type
  Handle_BinMXCAFDoc_NoteCommentDriver* = handle[BinMXCAFDoc_NoteCommentDriver]
  BinMXCAFDoc_NoteCommentDriver* {.importcpp: "BinMXCAFDoc_NoteCommentDriver",
                                  header: "BinMXCAFDoc_NoteCommentDriver.hxx",
                                  bycopy.} = object of BinMXCAFDoc_NoteDriver


proc constructBinMXCAFDoc_NoteCommentDriver*(
    theMsgDriver: handle[Message_Messenger]): BinMXCAFDoc_NoteCommentDriver {.
    constructor, importcpp: "BinMXCAFDoc_NoteCommentDriver(@)",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc NewEmpty*(this: BinMXCAFDoc_NoteCommentDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_NoteCommentDriver; theSource: BinObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc Paste*(this: BinMXCAFDoc_NoteCommentDriver; theSource: handle[TDF_Attribute];
           theTarget: var BinObjMgt_Persistent;
           theRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
type
  BinMXCAFDoc_NoteCommentDriverbase_type* = BinMXCAFDoc_NoteDriver

proc get_type_name*(): cstring {.importcpp: "BinMXCAFDoc_NoteCommentDriver::get_type_name(@)",
                              header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMXCAFDoc_NoteCommentDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc DynamicType*(this: BinMXCAFDoc_NoteCommentDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}