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

type
  XmlTObjDriversIntSparseArrayDriver* {.importcpp: "XmlTObjDrivers_IntSparseArrayDriver", header: "XmlTObjDrivers_IntSparseArrayDriver.hxx",
                                       bycopy.} = object of XmlMDF_ADriver ##  CASCADE RTTI


proc constructXmlTObjDriversIntSparseArrayDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlTObjDriversIntSparseArrayDriver {.
    constructor, importcpp: "XmlTObjDrivers_IntSparseArrayDriver(@)",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc newEmpty*(this: XmlTObjDriversIntSparseArrayDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc paste*(this: XmlTObjDriversIntSparseArrayDriver;
           theSource: XmlObjMgtPersistent; theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc paste*(this: XmlTObjDriversIntSparseArrayDriver;
           theSource: Handle[TDF_Attribute]; theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
type
  XmlTObjDriversIntSparseArrayDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlTObjDrivers_IntSparseArrayDriver::get_type_name(@)",
                            header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlTObjDrivers_IntSparseArrayDriver::get_type_descriptor(@)",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
proc dynamicType*(this: XmlTObjDriversIntSparseArrayDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlTObjDrivers_IntSparseArrayDriver.hxx".}
##  Define handle class

discard "forward decl of XmlTObjDrivers_IntSparseArrayDriver"
type
  HandleXmlTObjDriversIntSparseArrayDriver* = Handle[
      XmlTObjDriversIntSparseArrayDriver]

# when defined(_MSC_VER):
#   discard
