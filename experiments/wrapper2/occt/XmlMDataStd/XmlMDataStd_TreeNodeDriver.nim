##  Created on: 2001-08-24
##  Created by: Alexander GRIGORIEV
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
discard "forward decl of XmlMDataStd_TreeNodeDriver"
discard "forward decl of XmlMDataStd_TreeNodeDriver"
type
  HandleXmlMDataStdTreeNodeDriver* = Handle[XmlMDataStdTreeNodeDriver]

## ! Attribute Driver.

type
  XmlMDataStdTreeNodeDriver* {.importcpp: "XmlMDataStd_TreeNodeDriver",
                              header: "XmlMDataStd_TreeNodeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdTreeNodeDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDataStdTreeNodeDriver {.
    constructor, importcpp: "XmlMDataStd_TreeNodeDriver(@)",
    header: "XmlMDataStd_TreeNodeDriver.hxx".}
proc newEmpty*(this: XmlMDataStdTreeNodeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataStd_TreeNodeDriver.hxx".}
proc paste*(this: XmlMDataStdTreeNodeDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_TreeNodeDriver.hxx".}
proc paste*(this: XmlMDataStdTreeNodeDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_TreeNodeDriver.hxx".}
type
  XmlMDataStdTreeNodeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_TreeNodeDriver::get_type_name(@)",
                            header: "XmlMDataStd_TreeNodeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_TreeNodeDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_TreeNodeDriver.hxx".}
proc dynamicType*(this: XmlMDataStdTreeNodeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_TreeNodeDriver.hxx".}
