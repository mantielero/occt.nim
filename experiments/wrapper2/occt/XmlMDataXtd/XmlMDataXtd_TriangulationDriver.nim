##  Created on: 2016-11-10
##  Created by: Anton KOZULIN
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of XmlMDataXtd_TriangulationDriver"
type
  Handle_XmlMDataXtd_TriangulationDriver* = handle[XmlMDataXtd_TriangulationDriver]

## ! TDataStd_Mesh attribute XML Driver.

type
  XmlMDataXtd_TriangulationDriver* {.importcpp: "XmlMDataXtd_TriangulationDriver", header: "XmlMDataXtd_TriangulationDriver.hxx",
                                    bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataXtd_TriangulationDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMDataXtd_TriangulationDriver {.
    constructor, importcpp: "XmlMDataXtd_TriangulationDriver(@)",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc NewEmpty*(this: XmlMDataXtd_TriangulationDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc Paste*(this: XmlMDataXtd_TriangulationDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc Paste*(this: XmlMDataXtd_TriangulationDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_TriangulationDriver.hxx".}
type
  XmlMDataXtd_TriangulationDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDataXtd_TriangulationDriver::get_type_name(@)",
                              header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDataXtd_TriangulationDriver::get_type_descriptor(@)",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}
proc DynamicType*(this: XmlMDataXtd_TriangulationDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataXtd_TriangulationDriver.hxx".}