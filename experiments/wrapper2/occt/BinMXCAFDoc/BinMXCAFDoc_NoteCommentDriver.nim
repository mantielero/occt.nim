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

discard "forward decl of BinMXCAFDoc_NoteCommentDriver"
discard "forward decl of BinMXCAFDoc_NoteCommentDriver"
type
  HandleBinMXCAFDocNoteCommentDriver* = Handle[BinMXCAFDocNoteCommentDriver]
  BinMXCAFDocNoteCommentDriver* {.importcpp: "BinMXCAFDoc_NoteCommentDriver",
                                 header: "BinMXCAFDoc_NoteCommentDriver.hxx",
                                 bycopy.} = object of BinMXCAFDocNoteDriver


proc constructBinMXCAFDocNoteCommentDriver*(
    theMsgDriver: Handle[MessageMessenger]): BinMXCAFDocNoteCommentDriver {.
    constructor, importcpp: "BinMXCAFDoc_NoteCommentDriver(@)",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc newEmpty*(this: BinMXCAFDocNoteCommentDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc paste*(this: BinMXCAFDocNoteCommentDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc paste*(this: BinMXCAFDocNoteCommentDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
type
  BinMXCAFDocNoteCommentDriverbaseType* = BinMXCAFDocNoteDriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_NoteCommentDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_NoteCommentDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocNoteCommentDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMXCAFDoc_NoteCommentDriver.hxx".}
