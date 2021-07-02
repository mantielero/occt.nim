##  Created on: 2002-10-30
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of BinMDataStd_IntegerDriver"
discard "forward decl of BinMDataStd_IntegerDriver"
type
  HandleBinMDataStdIntegerDriver* = Handle[BinMDataStdIntegerDriver]

## ! Integer attribute Driver.

type
  BinMDataStdIntegerDriver* {.importcpp: "BinMDataStd_IntegerDriver",
                             header: "BinMDataStd_IntegerDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdIntegerDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataStdIntegerDriver {.
    constructor, importcpp: "BinMDataStd_IntegerDriver(@)",
    header: "BinMDataStd_IntegerDriver.hxx".}
proc newEmpty*(this: BinMDataStdIntegerDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_IntegerDriver.hxx".}
proc paste*(this: BinMDataStdIntegerDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_IntegerDriver.hxx".}
proc paste*(this: BinMDataStdIntegerDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_IntegerDriver.hxx".}
type
  BinMDataStdIntegerDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_IntegerDriver::get_type_name(@)",
                            header: "BinMDataStd_IntegerDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_IntegerDriver::get_type_descriptor(@)",
    header: "BinMDataStd_IntegerDriver.hxx".}
proc dynamicType*(this: BinMDataStdIntegerDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMDataStd_IntegerDriver.hxx".}

