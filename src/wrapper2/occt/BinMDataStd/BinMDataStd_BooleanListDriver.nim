##  Created on: 2007-05-29
##  Created by: Vlad Romashko
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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_BooleanListDriver"
discard "forward decl of BinMDataStd_BooleanListDriver"
type
  HandleBinMDataStdBooleanListDriver* = Handle[BinMDataStdBooleanListDriver]
  BinMDataStdBooleanListDriver* {.importcpp: "BinMDataStd_BooleanListDriver",
                                 header: "BinMDataStd_BooleanListDriver.hxx",
                                 bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdBooleanListDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdBooleanListDriver {.
    constructor, importcpp: "BinMDataStd_BooleanListDriver(@)",
    header: "BinMDataStd_BooleanListDriver.hxx".}
proc newEmpty*(this: BinMDataStdBooleanListDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_BooleanListDriver.hxx".}
proc paste*(this: BinMDataStdBooleanListDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_BooleanListDriver.hxx".}
proc paste*(this: BinMDataStdBooleanListDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_BooleanListDriver.hxx".}
type
  BinMDataStdBooleanListDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_BooleanListDriver::get_type_name(@)",
                            header: "BinMDataStd_BooleanListDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_BooleanListDriver::get_type_descriptor(@)",
    header: "BinMDataStd_BooleanListDriver.hxx".}
proc dynamicType*(this: BinMDataStdBooleanListDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_BooleanListDriver.hxx".}

