##  Created on: 2001-09-11
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
discard "forward decl of XmlMXCAFDoc_ColorDriver"
discard "forward decl of XmlMXCAFDoc_ColorDriver"
type
  Handle_XmlMXCAFDoc_ColorDriver* = handle[XmlMXCAFDoc_ColorDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_ColorDriver* {.importcpp: "XmlMXCAFDoc_ColorDriver",
                            header: "XmlMXCAFDoc_ColorDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDoc_ColorDriver*(theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_ColorDriver {.
    constructor, importcpp: "XmlMXCAFDoc_ColorDriver(@)",
    header: "XmlMXCAFDoc_ColorDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_ColorDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMXCAFDoc_ColorDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_ColorDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_ColorDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_ColorDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_ColorDriver.hxx".}
type
  XmlMXCAFDoc_ColorDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_ColorDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_ColorDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_ColorDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_ColorDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_ColorDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMXCAFDoc_ColorDriver.hxx".}