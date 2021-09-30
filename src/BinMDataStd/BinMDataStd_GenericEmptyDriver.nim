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
discard "forward decl of BinMDataStd_GenericEmptyDriver"
discard "forward decl of BinMDataStd_GenericEmptyDriver"
type
  HandleC1C1* = Handle[BinMDataStdGenericEmptyDriver]

## ! GenericEmpty attribute driver.

type
  BinMDataStdGenericEmptyDriver* {.importcpp: "BinMDataStd_GenericEmptyDriver",
                                  header: "BinMDataStd_GenericEmptyDriver.hxx",
                                  bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdGenericEmptyDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdGenericEmptyDriver {.
    constructor, importcpp: "BinMDataStd_GenericEmptyDriver(@)",
    header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc newEmpty*(this: BinMDataStdGenericEmptyDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc sourceType*(this: BinMDataStdGenericEmptyDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "SourceType",
    header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc paste*(this: BinMDataStdGenericEmptyDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc paste*(this: BinMDataStdGenericEmptyDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_GenericEmptyDriver.hxx".}
type
  BinMDataStdGenericEmptyDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_GenericEmptyDriver::get_type_name(@)",
                            header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_GenericEmptyDriver::get_type_descriptor(@)",
    header: "BinMDataStd_GenericEmptyDriver.hxx".}
proc dynamicType*(this: BinMDataStdGenericEmptyDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_GenericEmptyDriver.hxx".}

























