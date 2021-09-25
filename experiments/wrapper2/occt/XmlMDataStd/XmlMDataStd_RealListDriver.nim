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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDataStd_RealListDriver"
discard "forward decl of XmlMDataStd_RealListDriver"
type
  HandleXmlMDataStdRealListDriver* = Handle[XmlMDataStdRealListDriver]
  XmlMDataStdRealListDriver* {.importcpp: "XmlMDataStd_RealListDriver",
                              header: "XmlMDataStd_RealListDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdRealListDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMDataStdRealListDriver {.
    constructor, importcpp: "XmlMDataStd_RealListDriver(@)",
    header: "XmlMDataStd_RealListDriver.hxx".}
proc newEmpty*(this: XmlMDataStdRealListDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataStd_RealListDriver.hxx".}
proc paste*(this: XmlMDataStdRealListDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_RealListDriver.hxx".}
proc paste*(this: XmlMDataStdRealListDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_RealListDriver.hxx".}
type
  XmlMDataStdRealListDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_RealListDriver::get_type_name(@)",
                            header: "XmlMDataStd_RealListDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_RealListDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_RealListDriver.hxx".}
proc dynamicType*(this: XmlMDataStdRealListDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_RealListDriver.hxx".}
