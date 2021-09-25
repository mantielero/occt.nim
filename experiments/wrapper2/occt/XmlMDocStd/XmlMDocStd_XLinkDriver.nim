##  Created on: 2001-09-04
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDocStd_XLinkDriver"
discard "forward decl of XmlMDocStd_XLinkDriver"
type
  HandleXmlMDocStdXLinkDriver* = Handle[XmlMDocStdXLinkDriver]

## ! Attribute Driver.

type
  XmlMDocStdXLinkDriver* {.importcpp: "XmlMDocStd_XLinkDriver",
                          header: "XmlMDocStd_XLinkDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDocStdXLinkDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDocStdXLinkDriver {.
    constructor, importcpp: "XmlMDocStd_XLinkDriver(@)",
    header: "XmlMDocStd_XLinkDriver.hxx".}
proc newEmpty*(this: XmlMDocStdXLinkDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDocStd_XLinkDriver.hxx".}
proc paste*(this: XmlMDocStdXLinkDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDocStd_XLinkDriver.hxx".}
proc paste*(this: XmlMDocStdXLinkDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDocStd_XLinkDriver.hxx".}
type
  XmlMDocStdXLinkDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDocStd_XLinkDriver::get_type_name(@)",
                            header: "XmlMDocStd_XLinkDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDocStd_XLinkDriver::get_type_descriptor(@)",
    header: "XmlMDocStd_XLinkDriver.hxx".}
proc dynamicType*(this: XmlMDocStdXLinkDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDocStd_XLinkDriver.hxx".}
