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
discard "forward decl of XmlMDataStd_UAttributeDriver"
discard "forward decl of XmlMDataStd_UAttributeDriver"
type
  HandleXmlMDataStdUAttributeDriver* = Handle[XmlMDataStdUAttributeDriver]

## ! Attribute Driver.

type
  XmlMDataStdUAttributeDriver* {.importcpp: "XmlMDataStd_UAttributeDriver",
                                header: "XmlMDataStd_UAttributeDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdUAttributeDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdUAttributeDriver {.
    constructor, importcpp: "XmlMDataStd_UAttributeDriver(@)",
    header: "XmlMDataStd_UAttributeDriver.hxx".}
proc newEmpty*(this: XmlMDataStdUAttributeDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataStd_UAttributeDriver.hxx".}
proc paste*(this: XmlMDataStdUAttributeDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_UAttributeDriver.hxx".}
proc paste*(this: XmlMDataStdUAttributeDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_UAttributeDriver.hxx".}
type
  XmlMDataStdUAttributeDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_UAttributeDriver::get_type_name(@)",
                            header: "XmlMDataStd_UAttributeDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_UAttributeDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_UAttributeDriver.hxx".}
proc dynamicType*(this: XmlMDataStdUAttributeDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_UAttributeDriver.hxx".}
