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
discard "forward decl of XmlMDataStd_BooleanArrayDriver"
discard "forward decl of XmlMDataStd_BooleanArrayDriver"
type
  HandleC1C1* = Handle[XmlMDataStdBooleanArrayDriver]
  XmlMDataStdBooleanArrayDriver* {.importcpp: "XmlMDataStd_BooleanArrayDriver",
                                  header: "XmlMDataStd_BooleanArrayDriver.hxx",
                                  bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdBooleanArrayDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdBooleanArrayDriver {.
    constructor, importcpp: "XmlMDataStd_BooleanArrayDriver(@)",
    header: "XmlMDataStd_BooleanArrayDriver.hxx".}
proc newEmpty*(this: XmlMDataStdBooleanArrayDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_BooleanArrayDriver.hxx".}
proc paste*(this: XmlMDataStdBooleanArrayDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_BooleanArrayDriver.hxx".}
proc paste*(this: XmlMDataStdBooleanArrayDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_BooleanArrayDriver.hxx".}
type
  XmlMDataStdBooleanArrayDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_BooleanArrayDriver::get_type_name(@)",
                            header: "XmlMDataStd_BooleanArrayDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_BooleanArrayDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_BooleanArrayDriver.hxx".}
proc dynamicType*(this: XmlMDataStdBooleanArrayDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_BooleanArrayDriver.hxx".}

























