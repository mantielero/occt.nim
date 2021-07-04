##  Created on: 2007-03-30
##  Created by: Michael SAZONOV
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  ../TObj/TObj_Common, ../XmlMDF/XmlMDF_ADriver

type
  XmlTObjDrivers_IntSparseArrayDriver* {.importcpp: "XmlTObjDrivers_IntSparseArrayDriver", header: "XmlTObjDrivers_IntSparseArrayDriver.hxx",
                                        bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDrivers_IntSparseArrayDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlTObjDrivers_IntSparseArrayDriver {.
    constructor, importcpp: "XmlTObjDrivers_IntSparseArrayDriver(@)",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc NewEmpty*(this: XmlTObjDrivers_IntSparseArrayDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_IntSparseArrayDriver;
           theSource: XmlObjMgt_Persistent; theTarget: handle[TDF_Attribute];
           theRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc Paste*(this: XmlTObjDrivers_IntSparseArrayDriver;
           theSource: handle[TDF_Attribute]; theTarget: var XmlObjMgt_Persistent;
           theRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
type
  XmlTObjDrivers_IntSparseArrayDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlTObjDrivers_IntSparseArrayDriver::get_type_name(@)",
                              header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlTObjDrivers_IntSparseArrayDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc DynamicType*(this: XmlTObjDrivers_IntSparseArrayDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_IntSparseArrayDriver"
type
  Handle_XmlTObjDrivers_IntSparseArrayDriver* = handle[
      XmlTObjDrivers_IntSparseArrayDriver]

when defined(_MSC_VER):
  discard