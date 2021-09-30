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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_UAttributeDriver"
discard "forward decl of BinMDataStd_UAttributeDriver"
type
  HandleC1C1* = Handle[BinMDataStdUAttributeDriver]

## ! Attribute Driver.

type
  BinMDataStdUAttributeDriver* {.importcpp: "BinMDataStd_UAttributeDriver",
                                header: "BinMDataStd_UAttributeDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdUAttributeDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdUAttributeDriver {.
    constructor, importcpp: "BinMDataStd_UAttributeDriver(@)",
    header: "BinMDataStd_UAttributeDriver.hxx".}
proc newEmpty*(this: BinMDataStdUAttributeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_UAttributeDriver.hxx".}
proc paste*(this: BinMDataStdUAttributeDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_UAttributeDriver.hxx".}
proc paste*(this: BinMDataStdUAttributeDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_UAttributeDriver.hxx".}
type
  BinMDataStdUAttributeDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_UAttributeDriver::get_type_name(@)",
                            header: "BinMDataStd_UAttributeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_UAttributeDriver::get_type_descriptor(@)",
    header: "BinMDataStd_UAttributeDriver.hxx".}
proc dynamicType*(this: BinMDataStdUAttributeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_UAttributeDriver.hxx".}

























