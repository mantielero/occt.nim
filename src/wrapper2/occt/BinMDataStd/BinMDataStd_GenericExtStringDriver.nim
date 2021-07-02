##  Copyright (c) 2020 OPEN CASCADE SAS
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
discard "forward decl of BinMDataStd_GenericExtStringDriver"
discard "forward decl of BinMDataStd_GenericExtStringDriver"
type
  HandleBinMDataStdGenericExtStringDriver* = Handle[
      BinMDataStdGenericExtStringDriver]

## ! TDataStd_Name attribute Driver.

type
  BinMDataStdGenericExtStringDriver* {.importcpp: "BinMDataStd_GenericExtStringDriver", header: "BinMDataStd_GenericExtStringDriver.hxx",
                                      bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdGenericExtStringDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdGenericExtStringDriver {.
    constructor, importcpp: "BinMDataStd_GenericExtStringDriver(@)",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc newEmpty*(this: BinMDataStdGenericExtStringDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc sourceType*(this: BinMDataStdGenericExtStringDriver): var Handle[StandardType] {.
    noSideEffect, importcpp: "SourceType",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc paste*(this: BinMDataStdGenericExtStringDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc paste*(this: BinMDataStdGenericExtStringDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_GenericExtStringDriver.hxx".}
type
  BinMDataStdGenericExtStringDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_GenericExtStringDriver::get_type_name(@)",
                            header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_GenericExtStringDriver::get_type_descriptor(@)",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}
proc dynamicType*(this: BinMDataStdGenericExtStringDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_GenericExtStringDriver.hxx".}

