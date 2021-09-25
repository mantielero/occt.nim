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
discard "forward decl of BinMDataStd_ReferenceListDriver"
discard "forward decl of BinMDataStd_ReferenceListDriver"
type
  HandleBinMDataStdReferenceListDriver* = Handle[BinMDataStdReferenceListDriver]
  BinMDataStdReferenceListDriver* {.importcpp: "BinMDataStd_ReferenceListDriver", header: "BinMDataStd_ReferenceListDriver.hxx",
                                   bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdReferenceListDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdReferenceListDriver {.
    constructor, importcpp: "BinMDataStd_ReferenceListDriver(@)",
    header: "BinMDataStd_ReferenceListDriver.hxx".}
proc newEmpty*(this: BinMDataStdReferenceListDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_ReferenceListDriver.hxx".}
proc paste*(this: BinMDataStdReferenceListDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ReferenceListDriver.hxx".}
proc paste*(this: BinMDataStdReferenceListDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ReferenceListDriver.hxx".}
type
  BinMDataStdReferenceListDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_ReferenceListDriver::get_type_name(@)",
                            header: "BinMDataStd_ReferenceListDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_ReferenceListDriver::get_type_descriptor(@)",
    header: "BinMDataStd_ReferenceListDriver.hxx".}
proc dynamicType*(this: BinMDataStdReferenceListDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_ReferenceListDriver.hxx".}
