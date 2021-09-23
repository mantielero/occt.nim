##  Copyright (c) 2019 OPEN CASCADE SAS
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

discard "forward decl of XmlMXCAFDoc_VisMaterialDriver"
type
  Handle_XmlMXCAFDoc_VisMaterialDriver* = handle[XmlMXCAFDoc_VisMaterialDriver]

## ! Attribute Driver.

type
  XmlMXCAFDoc_VisMaterialDriver* {.importcpp: "XmlMXCAFDoc_VisMaterialDriver",
                                  header: "XmlMXCAFDoc_VisMaterialDriver.hxx",
                                  bycopy.} = object of XmlMDF_ADriver ## ! Main constructor.

  XmlMXCAFDoc_VisMaterialDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_VisMaterialDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_VisMaterialDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_VisMaterialDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc constructXmlMXCAFDoc_VisMaterialDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMXCAFDoc_VisMaterialDriver {.
    constructor, importcpp: "XmlMXCAFDoc_VisMaterialDriver(@)",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_VisMaterialDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_VisMaterialDriver; theSource: XmlObjMgt_Persistent;
           theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_VisMaterialDriver; theSource: handle[TDF_Attribute];
           theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_VisMaterialDriver.hxx".}