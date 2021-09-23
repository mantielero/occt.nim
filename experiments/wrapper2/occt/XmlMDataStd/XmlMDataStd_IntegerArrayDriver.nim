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
discard "forward decl of XmlMDataStd_IntegerArrayDriver"
discard "forward decl of XmlMDataStd_IntegerArrayDriver"
type
  Handle_XmlMDataStd_IntegerArrayDriver* = handle[XmlMDataStd_IntegerArrayDriver]

## ! Attribute Driver.

type
  XmlMDataStd_IntegerArrayDriver* {.importcpp: "XmlMDataStd_IntegerArrayDriver", header: "XmlMDataStd_IntegerArrayDriver.hxx",
                                   bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStd_IntegerArrayDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMDataStd_IntegerArrayDriver {.
    constructor, importcpp: "XmlMDataStd_IntegerArrayDriver(@)",
    header: "XmlMDataStd_IntegerArrayDriver.hxx".}
proc NewEmpty*(this: XmlMDataStd_IntegerArrayDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_IntegerArrayDriver.hxx".}
proc Paste*(this: XmlMDataStd_IntegerArrayDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDataStd_IntegerArrayDriver.hxx".}
proc Paste*(this: XmlMDataStd_IntegerArrayDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_IntegerArrayDriver.hxx".}
type
  XmlMDataStd_IntegerArrayDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDataStd_IntegerArrayDriver::get_type_name(@)",
                              header: "XmlMDataStd_IntegerArrayDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDataStd_IntegerArrayDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_IntegerArrayDriver.hxx".}
proc DynamicType*(this: XmlMDataStd_IntegerArrayDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_IntegerArrayDriver.hxx".}