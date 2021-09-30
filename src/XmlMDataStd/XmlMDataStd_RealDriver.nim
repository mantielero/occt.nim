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
discard "forward decl of XmlMDataStd_RealDriver"
discard "forward decl of XmlMDataStd_RealDriver"
type
  HandleC1C1* = Handle[XmlMDataStdRealDriver]

## ! Attribute Driver.

type
  XmlMDataStdRealDriver* {.importcpp: "XmlMDataStd_RealDriver",
                          header: "XmlMDataStd_RealDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdRealDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDataStdRealDriver {.
    constructor, importcpp: "XmlMDataStd_RealDriver(@)",
    header: "XmlMDataStd_RealDriver.hxx".}
proc newEmpty*(this: XmlMDataStdRealDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDataStd_RealDriver.hxx".}
proc paste*(this: XmlMDataStdRealDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_RealDriver.hxx".}
proc paste*(this: XmlMDataStdRealDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_RealDriver.hxx".}
type
  XmlMDataStdRealDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_RealDriver::get_type_name(@)",
                            header: "XmlMDataStd_RealDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_RealDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_RealDriver.hxx".}
proc dynamicType*(this: XmlMDataStdRealDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDataStd_RealDriver.hxx".}

























