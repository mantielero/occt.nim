##  Created on: 2007-08-01
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
discard "forward decl of BinMDataStd_IntPackedMapDriver"
discard "forward decl of BinMDataStd_IntPackedMapDriver"
type
  HandleBinMDataStdIntPackedMapDriver* = Handle[BinMDataStdIntPackedMapDriver]

## ! TDataStd_IntPackedMap attribute Driver.

type
  BinMDataStdIntPackedMapDriver* {.importcpp: "BinMDataStd_IntPackedMapDriver",
                                  header: "BinMDataStd_IntPackedMapDriver.hxx",
                                  bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdIntPackedMapDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdIntPackedMapDriver {.
    constructor, importcpp: "BinMDataStd_IntPackedMapDriver(@)",
    header: "BinMDataStd_IntPackedMapDriver.hxx".}
proc newEmpty*(this: BinMDataStdIntPackedMapDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_IntPackedMapDriver.hxx".}
proc paste*(this: BinMDataStdIntPackedMapDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDataStd_IntPackedMapDriver.hxx".}
proc paste*(this: BinMDataStdIntPackedMapDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_IntPackedMapDriver.hxx".}
type
  BinMDataStdIntPackedMapDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_IntPackedMapDriver::get_type_name(@)",
                            header: "BinMDataStd_IntPackedMapDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_IntPackedMapDriver::get_type_descriptor(@)",
    header: "BinMDataStd_IntPackedMapDriver.hxx".}
proc dynamicType*(this: BinMDataStdIntPackedMapDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_IntPackedMapDriver.hxx".}

