##  Created on: 2001-08-24
##  Created by: Alexander GRIGORIEV
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
discard "forward decl of XmlMDataXtd_GeometryDriver"
discard "forward decl of XmlMDataXtd_GeometryDriver"
type
  Handle_XmlMDataXtd_GeometryDriver* = handle[XmlMDataXtd_GeometryDriver]

## ! Attribute Driver.

type
  XmlMDataXtd_GeometryDriver* {.importcpp: "XmlMDataXtd_GeometryDriver",
                               header: "XmlMDataXtd_GeometryDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataXtd_GeometryDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMDataXtd_GeometryDriver {.
    constructor, importcpp: "XmlMDataXtd_GeometryDriver(@)",
    header: "XmlMDataXtd_GeometryDriver.hxx".}
proc NewEmpty*(this: XmlMDataXtd_GeometryDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataXtd_GeometryDriver.hxx".}
proc Paste*(this: XmlMDataXtd_GeometryDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDataXtd_GeometryDriver.hxx".}
proc Paste*(this: XmlMDataXtd_GeometryDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataXtd_GeometryDriver.hxx".}
type
  XmlMDataXtd_GeometryDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDataXtd_GeometryDriver::get_type_name(@)",
                              header: "XmlMDataXtd_GeometryDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDataXtd_GeometryDriver::get_type_descriptor(@)",
    header: "XmlMDataXtd_GeometryDriver.hxx".}
proc DynamicType*(this: XmlMDataXtd_GeometryDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataXtd_GeometryDriver.hxx".}