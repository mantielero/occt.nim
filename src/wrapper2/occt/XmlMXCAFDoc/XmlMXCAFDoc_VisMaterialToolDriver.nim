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
  ../XmlMDF/XmlMDF_ADriver

discard "forward decl of XmlMXCAFDoc_VisMaterialToolDriver"
type
  Handle_XmlMXCAFDoc_VisMaterialToolDriver* = handle[
      XmlMXCAFDoc_VisMaterialToolDriver]

## ! XML persistence driver for XCAFDoc_VisMaterialTool.

type
  XmlMXCAFDoc_VisMaterialToolDriver* {.importcpp: "XmlMXCAFDoc_VisMaterialToolDriver", header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx",
                                      bycopy.} = object of XmlMDF_ADriver ## ! Main
                                                                     ## constructor.

  XmlMXCAFDoc_VisMaterialToolDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMXCAFDoc_VisMaterialToolDriver::get_type_name(@)",
                              header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMXCAFDoc_VisMaterialToolDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc DynamicType*(this: XmlMXCAFDoc_VisMaterialToolDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc constructXmlMXCAFDoc_VisMaterialToolDriver*(
    theMsgDriver: handle[Message_Messenger]): XmlMXCAFDoc_VisMaterialToolDriver {.
    constructor, importcpp: "XmlMXCAFDoc_VisMaterialToolDriver(@)",
    header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc NewEmpty*(this: XmlMXCAFDoc_VisMaterialToolDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_VisMaterialToolDriver;
           theSource: XmlObjMgt_Persistent; theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}
proc Paste*(this: XmlMXCAFDoc_VisMaterialToolDriver;
           theSource: handle[TDF_Attribute]; theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_VisMaterialToolDriver.hxx".}