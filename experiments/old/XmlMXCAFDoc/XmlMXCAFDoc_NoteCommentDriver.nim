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

discard "forward decl of XmlMXCAFDoc_NoteCommentDriver"
discard "forward decl of XmlMXCAFDoc_NoteCommentDriver"
type
  HandleC1C1* = Handle[XmlMXCAFDocNoteCommentDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocNoteCommentDriver* {.importcpp: "XmlMXCAFDoc_NoteCommentDriver",
                                 header: "XmlMXCAFDoc_NoteCommentDriver.hxx",
                                 bycopy.} = object of XmlMXCAFDocNoteDriver


proc constructXmlMXCAFDocNoteCommentDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocNoteCommentDriver {.
    constructor, importcpp: "XmlMXCAFDoc_NoteCommentDriver(@)",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocNoteCommentDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc paste*(this: XmlMXCAFDocNoteCommentDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc paste*(this: XmlMXCAFDocNoteCommentDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
type
  XmlMXCAFDocNoteCommentDriverbaseType* = XmlMXCAFDocNoteDriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_NoteCommentDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_NoteCommentDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocNoteCommentDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}

























