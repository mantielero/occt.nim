##  Created on: 2004-11-24
##  Created by: Edward AGAPOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  BinTObjDriversModelDriver* {.importcpp: "BinTObjDrivers_ModelDriver",
                              header: "BinTObjDrivers_ModelDriver.hxx", bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDriversModelDriver*(theMessageDriver: Handle[MessageMessenger]): BinTObjDriversModelDriver {.
    constructor, importcpp: "BinTObjDrivers_ModelDriver(@)",
    header: "BinTObjDrivers_ModelDriver.hxx".}
proc newEmpty*(this: BinTObjDriversModelDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinTObjDrivers_ModelDriver.hxx".}
proc paste*(this: BinTObjDriversModelDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinTObjDrivers_ModelDriver.hxx".}
proc paste*(this: BinTObjDriversModelDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_ModelDriver.hxx".}
type
  BinTObjDriversModelDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinTObjDrivers_ModelDriver::get_type_name(@)",
                            header: "BinTObjDrivers_ModelDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinTObjDrivers_ModelDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_ModelDriver.hxx".}
proc dynamicType*(this: BinTObjDriversModelDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_ModelDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_ModelDriver"
type
  HandleBinTObjDriversModelDriver* = Handle[BinTObjDriversModelDriver]

# when defined(_MSC_VER):
#   discard

