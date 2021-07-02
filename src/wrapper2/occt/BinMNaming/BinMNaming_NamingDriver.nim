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
discard "forward decl of BinMNaming_NamingDriver"
discard "forward decl of BinMNaming_NamingDriver"
type
  HandleBinMNamingNamingDriver* = Handle[BinMNamingNamingDriver]

## ! Naming  Attribute Driver.

type
  BinMNamingNamingDriver* {.importcpp: "BinMNaming_NamingDriver",
                           header: "BinMNaming_NamingDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMNamingNamingDriver*(theMessageDriver: Handle[MessageMessenger]): BinMNamingNamingDriver {.
    constructor, importcpp: "BinMNaming_NamingDriver(@)",
    header: "BinMNaming_NamingDriver.hxx".}
proc newEmpty*(this: BinMNamingNamingDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMNaming_NamingDriver.hxx".}
proc paste*(this: BinMNamingNamingDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMNaming_NamingDriver.hxx".}
proc paste*(this: BinMNamingNamingDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMNaming_NamingDriver.hxx".}
type
  BinMNamingNamingDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMNaming_NamingDriver::get_type_name(@)",
                            header: "BinMNaming_NamingDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMNaming_NamingDriver::get_type_descriptor(@)",
    header: "BinMNaming_NamingDriver.hxx".}
proc dynamicType*(this: BinMNamingNamingDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMNaming_NamingDriver.hxx".}

