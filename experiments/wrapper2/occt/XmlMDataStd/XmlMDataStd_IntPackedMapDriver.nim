##  Created on: 2007-08-22
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMDataStd_IntPackedMapDriver"
discard "forward decl of XmlMDataStd_IntPackedMapDriver"
type
  Handle_XmlMDataStd_IntPackedMapDriver* = handle[XmlMDataStd_IntPackedMapDriver]

## ! TDataStd_IntPackedMap attribute Driver.

type
  XmlMDataStd_IntPackedMapDriver* {.importcpp: "XmlMDataStd_IntPackedMapDriver", header: "XmlMDataStd_IntPackedMapDriver.hxx",
                                   bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStd_IntPackedMapDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMDataStd_IntPackedMapDriver {.
    constructor, importcpp: "XmlMDataStd_IntPackedMapDriver(@)",
    header: "XmlMDataStd_IntPackedMapDriver.hxx".}
proc NewEmpty*(this: XmlMDataStd_IntPackedMapDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_IntPackedMapDriver.hxx".}
proc Paste*(this: XmlMDataStd_IntPackedMapDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDataStd_IntPackedMapDriver.hxx".}
proc Paste*(this: XmlMDataStd_IntPackedMapDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_IntPackedMapDriver.hxx".}
type
  XmlMDataStd_IntPackedMapDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDataStd_IntPackedMapDriver::get_type_name(@)",
                              header: "XmlMDataStd_IntPackedMapDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDataStd_IntPackedMapDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_IntPackedMapDriver.hxx".}
proc DynamicType*(this: XmlMDataStd_IntPackedMapDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_IntPackedMapDriver.hxx".}