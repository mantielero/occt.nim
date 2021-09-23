##  Created on: 2001-08-29
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDF_TagSourceDriver"
discard "forward decl of XmlMDF_TagSourceDriver"
type
  Handle_XmlMDF_TagSourceDriver* = handle[XmlMDF_TagSourceDriver]

## ! Attribute Driver.

type
  XmlMDF_TagSourceDriver* {.importcpp: "XmlMDF_TagSourceDriver",
                           header: "XmlMDF_TagSourceDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDF_TagSourceDriver*(theMessageDriver: handle[Message_Messenger]): XmlMDF_TagSourceDriver {.
    constructor, importcpp: "XmlMDF_TagSourceDriver(@)",
    header: "XmlMDF_TagSourceDriver.hxx".}
proc NewEmpty*(this: XmlMDF_TagSourceDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_TagSourceDriver.hxx".}
proc Paste*(this: XmlMDF_TagSourceDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDF_TagSourceDriver.hxx".}
proc Paste*(this: XmlMDF_TagSourceDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_TagSourceDriver.hxx".}
type
  XmlMDF_TagSourceDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDF_TagSourceDriver::get_type_name(@)",
                              header: "XmlMDF_TagSourceDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDF_TagSourceDriver::get_type_descriptor(@)",
    header: "XmlMDF_TagSourceDriver.hxx".}
proc DynamicType*(this: XmlMDF_TagSourceDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMDF_TagSourceDriver.hxx".}