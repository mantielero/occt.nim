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
discard "forward decl of BinMDocStd_XLinkDriver"
discard "forward decl of BinMDocStd_XLinkDriver"
type
  HandleBinMDocStdXLinkDriver* = Handle[BinMDocStdXLinkDriver]

## ! XLink attribute Driver.

type
  BinMDocStdXLinkDriver* {.importcpp: "BinMDocStd_XLinkDriver",
                          header: "BinMDocStd_XLinkDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDocStdXLinkDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDocStdXLinkDriver {.
    constructor, importcpp: "BinMDocStd_XLinkDriver(@)",
    header: "BinMDocStd_XLinkDriver.hxx".}
proc newEmpty*(this: BinMDocStdXLinkDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDocStd_XLinkDriver.hxx".}
proc paste*(this: BinMDocStdXLinkDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): StandardBoolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDocStd_XLinkDriver.hxx".}
proc paste*(this: BinMDocStdXLinkDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDocStd_XLinkDriver.hxx".}
type
  BinMDocStdXLinkDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDocStd_XLinkDriver::get_type_name(@)",
                            header: "BinMDocStd_XLinkDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDocStd_XLinkDriver::get_type_descriptor(@)",
    header: "BinMDocStd_XLinkDriver.hxx".}
proc dynamicType*(this: BinMDocStdXLinkDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDocStd_XLinkDriver.hxx".}

