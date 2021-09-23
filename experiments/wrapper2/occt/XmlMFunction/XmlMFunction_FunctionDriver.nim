##  Created on: 2001-09-04
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
  ../Standard/Standard, ../Standard/Standard_Type, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMFunction_FunctionDriver"
discard "forward decl of XmlMFunction_FunctionDriver"
type
  Handle_XmlMFunction_FunctionDriver* = handle[XmlMFunction_FunctionDriver]

## ! Attribute Driver.

type
  XmlMFunction_FunctionDriver* {.importcpp: "XmlMFunction_FunctionDriver",
                                header: "XmlMFunction_FunctionDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMFunction_FunctionDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMFunction_FunctionDriver {.
    constructor, importcpp: "XmlMFunction_FunctionDriver(@)",
    header: "XmlMFunction_FunctionDriver.hxx".}
proc NewEmpty*(this: XmlMFunction_FunctionDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMFunction_FunctionDriver.hxx".}
proc Paste*(this: XmlMFunction_FunctionDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMFunction_FunctionDriver.hxx".}
proc Paste*(this: XmlMFunction_FunctionDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMFunction_FunctionDriver.hxx".}
type
  XmlMFunction_FunctionDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMFunction_FunctionDriver::get_type_name(@)",
                              header: "XmlMFunction_FunctionDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMFunction_FunctionDriver::get_type_descriptor(@)",
    header: "XmlMFunction_FunctionDriver.hxx".}
proc DynamicType*(this: XmlMFunction_FunctionDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMFunction_FunctionDriver.hxx".}