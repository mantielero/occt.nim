##  Created on: 2007-07-02
##  Created by: Sergey ZARITCHNY
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
discard "forward decl of BinMDataStd_NamedDataDriver"
discard "forward decl of BinMDataStd_NamedDataDriver"
type
  HandleBinMDataStdNamedDataDriver* = Handle[BinMDataStdNamedDataDriver]
  BinMDataStdNamedDataDriver* {.importcpp: "BinMDataStd_NamedDataDriver",
                               header: "BinMDataStd_NamedDataDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdNamedDataDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdNamedDataDriver {.
    constructor, importcpp: "BinMDataStd_NamedDataDriver(@)",
    header: "BinMDataStd_NamedDataDriver.hxx".}
proc newEmpty*(this: BinMDataStdNamedDataDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_NamedDataDriver.hxx".}
proc paste*(this: BinMDataStdNamedDataDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_NamedDataDriver.hxx".}
proc paste*(this: BinMDataStdNamedDataDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_NamedDataDriver.hxx".}
type
  BinMDataStdNamedDataDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_NamedDataDriver::get_type_name(@)",
                            header: "BinMDataStd_NamedDataDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_NamedDataDriver::get_type_descriptor(@)",
    header: "BinMDataStd_NamedDataDriver.hxx".}
proc dynamicType*(this: BinMDataStdNamedDataDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_NamedDataDriver.hxx".}
