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
discard "forward decl of BinMDataStd_VariableDriver"
discard "forward decl of BinMDataStd_VariableDriver"
type
  HandleBinMDataStdVariableDriver* = Handle[BinMDataStdVariableDriver]

## ! Attribute Driver.

type
  BinMDataStdVariableDriver* {.importcpp: "BinMDataStd_VariableDriver",
                              header: "BinMDataStd_VariableDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdVariableDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataStdVariableDriver {.
    constructor, importcpp: "BinMDataStd_VariableDriver(@)",
    header: "BinMDataStd_VariableDriver.hxx".}
proc newEmpty*(this: BinMDataStdVariableDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_VariableDriver.hxx".}
proc paste*(this: BinMDataStdVariableDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_VariableDriver.hxx".}
proc paste*(this: BinMDataStdVariableDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_VariableDriver.hxx".}
type
  BinMDataStdVariableDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_VariableDriver::get_type_name(@)",
                            header: "BinMDataStd_VariableDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_VariableDriver::get_type_descriptor(@)",
    header: "BinMDataStd_VariableDriver.hxx".}
proc dynamicType*(this: BinMDataStdVariableDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_VariableDriver.hxx".}

