##  Created on: 2017-02-10
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
discard "forward decl of BinMXCAFDoc_NoteDriver"
discard "forward decl of BinMXCAFDoc_NoteDriver"
type
  HandleBinMXCAFDocNoteDriver* = Handle[BinMXCAFDocNoteDriver]
  BinMXCAFDocNoteDriver* {.importcpp: "BinMXCAFDoc_NoteDriver",
                          header: "BinMXCAFDoc_NoteDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc paste*(this: BinMXCAFDocNoteDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMXCAFDoc_NoteDriver.hxx".}
proc paste*(this: BinMXCAFDocNoteDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMXCAFDoc_NoteDriver.hxx".}
type
  BinMXCAFDocNoteDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMXCAFDoc_NoteDriver::get_type_name(@)",
                            header: "BinMXCAFDoc_NoteDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMXCAFDoc_NoteDriver::get_type_descriptor(@)",
    header: "BinMXCAFDoc_NoteDriver.hxx".}
proc dynamicType*(this: BinMXCAFDocNoteDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMXCAFDoc_NoteDriver.hxx".}

