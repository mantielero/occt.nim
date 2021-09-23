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
  ../Standard/Standard, ../Standard/Standard_Type, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMXCAFDoc_NoteDriver"
discard "forward decl of XmlMXCAFDoc_NoteDriver"
type
  Handle_XmlMXCAFDoc_NoteDriver* = handle[XmlMXCAFDoc_NoteDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_NoteDriver* {.importcpp: "XmlMXCAFDoc_NoteDriver",
                           header: "XmlMXCAFDoc_NoteDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc Paste*(this: XmlMXCAFDoc_NoteDriver; theSource: XmlObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_NoteDriver; theSource: handle[TDF_Attribute];
           theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_NoteDriver.hxx".}
type
  XmlMXCAFDoc_NoteDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_NoteDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_NoteDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_NoteDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_NoteDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMXCAFDoc_NoteDriver.hxx".}