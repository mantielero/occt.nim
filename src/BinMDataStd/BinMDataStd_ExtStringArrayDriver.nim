##  Created on: 2004-08-24
##  Created by: Pavel TELKOV
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
discard "forward decl of BinMDataStd_ExtStringArrayDriver"
discard "forward decl of BinMDataStd_ExtStringArrayDriver"
type
  HandleC1C1* = Handle[BinMDataStdExtStringArrayDriver]

## ! Array of extended string attribute Driver.

type
  BinMDataStdExtStringArrayDriver* {.importcpp: "BinMDataStd_ExtStringArrayDriver", header: "BinMDataStd_ExtStringArrayDriver.hxx",
                                    bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdExtStringArrayDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdExtStringArrayDriver {.
    constructor, importcpp: "BinMDataStd_ExtStringArrayDriver(@)",
    header: "BinMDataStd_ExtStringArrayDriver.hxx".}
proc newEmpty*(this: BinMDataStdExtStringArrayDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_ExtStringArrayDriver.hxx".}
proc paste*(this: BinMDataStdExtStringArrayDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ExtStringArrayDriver.hxx".}
proc paste*(this: BinMDataStdExtStringArrayDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ExtStringArrayDriver.hxx".}
type
  BinMDataStdExtStringArrayDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_ExtStringArrayDriver::get_type_name(@)",
                            header: "BinMDataStd_ExtStringArrayDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_ExtStringArrayDriver::get_type_descriptor(@)",
    header: "BinMDataStd_ExtStringArrayDriver.hxx".}
proc dynamicType*(this: BinMDataStdExtStringArrayDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_ExtStringArrayDriver.hxx".}

























