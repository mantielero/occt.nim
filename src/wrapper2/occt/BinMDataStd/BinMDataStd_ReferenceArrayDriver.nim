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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_ReferenceArrayDriver"
discard "forward decl of BinMDataStd_ReferenceArrayDriver"
type
  Handle_BinMDataStd_ReferenceArrayDriver* = handle[
      BinMDataStd_ReferenceArrayDriver]
  BinMDataStd_ReferenceArrayDriver* {.importcpp: "BinMDataStd_ReferenceArrayDriver", header: "BinMDataStd_ReferenceArrayDriver.hxx",
                                     bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStd_ReferenceArrayDriver*(
    theMessageDriver: handle[Message_Messenger]): BinMDataStd_ReferenceArrayDriver {.
    constructor, importcpp: "BinMDataStd_ReferenceArrayDriver(@)",
    header: "BinMDataStd_ReferenceArrayDriver.hxx".}
proc NewEmpty*(this: BinMDataStd_ReferenceArrayDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_ReferenceArrayDriver.hxx".}
proc Paste*(this: BinMDataStd_ReferenceArrayDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste",
    header: "BinMDataStd_ReferenceArrayDriver.hxx".}
proc Paste*(this: BinMDataStd_ReferenceArrayDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ReferenceArrayDriver.hxx".}
type
  BinMDataStd_ReferenceArrayDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDataStd_ReferenceArrayDriver::get_type_name(@)",
                              header: "BinMDataStd_ReferenceArrayDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDataStd_ReferenceArrayDriver::get_type_descriptor(@)",
    header: "BinMDataStd_ReferenceArrayDriver.hxx".}
proc DynamicType*(this: BinMDataStd_ReferenceArrayDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_ReferenceArrayDriver.hxx".}