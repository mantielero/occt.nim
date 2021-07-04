##  Created on: 2008-12-10
##  Created by: Pavel TELKOV
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
discard "forward decl of XmlMXCAFDoc_MaterialDriver"
discard "forward decl of XmlMXCAFDoc_MaterialDriver"
type
  Handle_XmlMXCAFDoc_MaterialDriver* = handle[XmlMXCAFDoc_MaterialDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_MaterialDriver* {.importcpp: "XmlMXCAFDoc_MaterialDriver",
                               header: "XmlMXCAFDoc_MaterialDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDoc_MaterialDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_MaterialDriver {.
    constructor, importcpp: "XmlMXCAFDoc_MaterialDriver(@)",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_MaterialDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_MaterialDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_MaterialDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_MaterialDriver.hxx".}
type
  XmlMXCAFDoc_MaterialDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_MaterialDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_MaterialDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_MaterialDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_MaterialDriver.hxx".}