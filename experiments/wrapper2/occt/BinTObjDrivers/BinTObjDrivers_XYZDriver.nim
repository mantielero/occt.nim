##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
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
  BinTObjDriversXYZDriver* {.importcpp: "BinTObjDrivers_XYZDriver",
                            header: "BinTObjDrivers_XYZDriver.hxx", bycopy.} = object of BinMDF_ADriver ##  CASCADE RTTI


proc constructBinTObjDriversXYZDriver*(theMessageDriver: Handle[MessageMessenger]): BinTObjDriversXYZDriver {.
    constructor, importcpp: "BinTObjDrivers_XYZDriver(@)",
    header: "BinTObjDrivers_XYZDriver.hxx".}
proc newEmpty*(this: BinTObjDriversXYZDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinTObjDrivers_XYZDriver.hxx".}
proc paste*(this: BinTObjDriversXYZDriver; theSource: BinObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_XYZDriver.hxx".}
proc paste*(this: BinTObjDriversXYZDriver; theSource: Handle[TDF_Attribute];
           theTarget: var BinObjMgtPersistent;
           theRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinTObjDrivers_XYZDriver.hxx".}
type
  BinTObjDriversXYZDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinTObjDrivers_XYZDriver::get_type_name(@)",
                            header: "BinTObjDrivers_XYZDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinTObjDrivers_XYZDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_XYZDriver.hxx".}
proc dynamicType*(this: BinTObjDriversXYZDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinTObjDrivers_XYZDriver.hxx".}
##  Define handle class

discard "forward decl of BinTObjDrivers_XYZDriver"
type
  HandleBinTObjDriversXYZDriver* = Handle[BinTObjDriversXYZDriver]

# when defined(_MSC_VER):
#   discard
