##  Created on: 2008-03-05
##  Created by: Vlad ROMASHKO
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMFunction_GraphNodeDriver"
discard "forward decl of XmlMFunction_GraphNodeDriver"
type
  Handle_XmlMFunction_GraphNodeDriver* = handle[XmlMFunction_GraphNodeDriver]

## ! XML persistence driver for dependencies of a function.

type
  XmlMFunction_GraphNodeDriver* {.importcpp: "XmlMFunction_GraphNodeDriver",
                                 header: "XmlMFunction_GraphNodeDriver.hxx",
                                 bycopy.} = object of XmlMDF_ADriver


proc constructXmlMFunction_GraphNodeDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMFunction_GraphNodeDriver {.
    constructor, importcpp: "XmlMFunction_GraphNodeDriver(@)",
    header: "XmlMFunction_GraphNodeDriver.hxx".}
proc NewEmpty*(this: XmlMFunction_GraphNodeDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMFunction_GraphNodeDriver.hxx".}
proc Paste*(this: XmlMFunction_GraphNodeDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMFunction_GraphNodeDriver.hxx".}
proc Paste*(this: XmlMFunction_GraphNodeDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_GraphNodeDriver.hxx".}
type
  XmlMFunction_GraphNodeDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMFunction_GraphNodeDriver::get_type_name(@)",
                              header: "XmlMFunction_GraphNodeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMFunction_GraphNodeDriver::get_type_descriptor(@)",
    header: "XmlMFunction_GraphNodeDriver.hxx".}
proc DynamicType*(this: XmlMFunction_GraphNodeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMFunction_GraphNodeDriver.hxx".}