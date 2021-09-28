##  Created on: 2017-02-14
##  Created by: Sergey NIKONOV
##  Copyright (c) 2008-2017 OPEN CASCADE SAS
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
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMXCAFDoc_NoteDriver"
discard "forward decl of XmlMXCAFDoc_NoteDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocNoteDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocNoteDriver* {.importcpp: "XmlMXCAFDoc_NoteDriver",
                          header: "XmlMXCAFDoc_NoteDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc paste*(this: XmlMXCAFDocNoteDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc paste*(this: XmlMXCAFDocNoteDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteDriver.hxx".}
type
  XmlMXCAFDocNoteDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_NoteDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_NoteDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocNoteDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMXCAFDoc_NoteDriver.hxx".}

























