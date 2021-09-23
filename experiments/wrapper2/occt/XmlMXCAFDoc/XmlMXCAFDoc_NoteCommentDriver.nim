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

import
  XmlMXCAFDoc_NoteDriver

discard "forward decl of XmlMXCAFDoc_NoteCommentDriver"
discard "forward decl of XmlMXCAFDoc_NoteCommentDriver"
type
  Handle_XmlMXCAFDoc_NoteCommentDriver* = handle[XmlMXCAFDoc_NoteCommentDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_NoteCommentDriver* {.importcpp: "XmlMXCAFDoc_NoteCommentDriver",
                                  header: "XmlMXCAFDoc_NoteCommentDriver.hxx",
                                  bycopy.} = object of XmlMXCAFDoc_NoteDriver


proc constructXmlMXCAFDoc_NoteCommentDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_NoteCommentDriver {.
    constructor, importcpp: "XmlMXCAFDoc_NoteCommentDriver(@)",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_NoteCommentDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_NoteCommentDriver; theSource: XmlObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_NoteCommentDriver; theSource: handle[TDF_Attribute];
           theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
type
  XmlMXCAFDoc_NoteCommentDriverbase_type* = XmlMXCAFDoc_NoteDriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_NoteCommentDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_NoteCommentDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_NoteCommentDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_NoteCommentDriver.hxx".}