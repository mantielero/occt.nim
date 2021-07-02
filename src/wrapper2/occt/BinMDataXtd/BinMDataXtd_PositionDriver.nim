##  Created on: 2004-05-13
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataXtd_PositionDriver"
discard "forward decl of BinMDataXtd_PositionDriver"
type
  HandleBinMDataXtdPositionDriver* = Handle[BinMDataXtdPositionDriver]

## ! Position Attribute Driver.

type
  BinMDataXtdPositionDriver* {.importcpp: "BinMDataXtd_PositionDriver",
                              header: "BinMDataXtd_PositionDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataXtdPositionDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataXtdPositionDriver {.
    constructor, importcpp: "BinMDataXtd_PositionDriver(@)",
    header: "BinMDataXtd_PositionDriver.hxx".}
proc newEmpty*(this: BinMDataXtdPositionDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataXtd_PositionDriver.hxx".}
proc paste*(this: BinMDataXtdPositionDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataXtd_PositionDriver.hxx".}
proc paste*(this: BinMDataXtdPositionDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataXtd_PositionDriver.hxx".}
type
  BinMDataXtdPositionDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataXtd_PositionDriver::get_type_name(@)",
                            header: "BinMDataXtd_PositionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataXtd_PositionDriver::get_type_descriptor(@)",
    header: "BinMDataXtd_PositionDriver.hxx".}
proc dynamicType*(this: BinMDataXtdPositionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataXtd_PositionDriver.hxx".}

