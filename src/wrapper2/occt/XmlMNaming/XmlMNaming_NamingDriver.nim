##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMNaming_NamingDriver"
discard "forward decl of XmlMNaming_NamingDriver"
type
  Handle_XmlMNaming_NamingDriver* = handle[XmlMNaming_NamingDriver]
  XmlMNaming_NamingDriver* {.importcpp: "XmlMNaming_NamingDriver",
                            header: "XmlMNaming_NamingDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMNaming_NamingDriver*(aMessageDriver: handle[Message_Messenger]): XmlMNaming_NamingDriver {.
    constructor, importcpp: "XmlMNaming_NamingDriver(@)",
    header: "XmlMNaming_NamingDriver.hxx".}
proc NewEmpty*(this: XmlMNaming_NamingDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMNaming_NamingDriver.hxx".}
proc Paste*(this: XmlMNaming_NamingDriver; theSource: XmlObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMNaming_NamingDriver.hxx".}
proc Paste*(this: XmlMNaming_NamingDriver; theSource: handle[TDF_Attribute];
           theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamingDriver.hxx".}
type
  XmlMNaming_NamingDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMNaming_NamingDriver::get_type_name(@)",
                              header: "XmlMNaming_NamingDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMNaming_NamingDriver::get_type_descriptor(@)",
    header: "XmlMNaming_NamingDriver.hxx".}
proc DynamicType*(this: XmlMNaming_NamingDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMNaming_NamingDriver.hxx".}