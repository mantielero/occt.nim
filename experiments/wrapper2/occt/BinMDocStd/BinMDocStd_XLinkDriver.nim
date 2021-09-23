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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BinMDF/BinMDF_ADriver,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDocStd_XLinkDriver"
discard "forward decl of BinMDocStd_XLinkDriver"
type
  Handle_BinMDocStd_XLinkDriver* = handle[BinMDocStd_XLinkDriver]

## ! XLink attribute Driver.

type
  BinMDocStd_XLinkDriver* {.importcpp: "BinMDocStd_XLinkDriver",
                           header: "BinMDocStd_XLinkDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDocStd_XLinkDriver*(theMessageDriver: handle[Message_Messenger]): BinMDocStd_XLinkDriver {.
    constructor, importcpp: "BinMDocStd_XLinkDriver(@)",
    header: "BinMDocStd_XLinkDriver.hxx".}
proc NewEmpty*(this: BinMDocStd_XLinkDriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDocStd_XLinkDriver.hxx".}
proc Paste*(this: BinMDocStd_XLinkDriver; Source: BinObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDocStd_XLinkDriver.hxx".}
proc Paste*(this: BinMDocStd_XLinkDriver; Source: handle[TDF_Attribute];
           Target: var BinObjMgt_Persistent;
           RelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDocStd_XLinkDriver.hxx".}
type
  BinMDocStd_XLinkDriverbase_type* = BinMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "BinMDocStd_XLinkDriver::get_type_name(@)",
                              header: "BinMDocStd_XLinkDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDocStd_XLinkDriver::get_type_descriptor(@)",
    header: "BinMDocStd_XLinkDriver.hxx".}
proc DynamicType*(this: BinMDocStd_XLinkDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BinMDocStd_XLinkDriver.hxx".}