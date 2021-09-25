##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMNaming_NamingDriver"
discard "forward decl of XmlMNaming_NamingDriver"
type
  HandleXmlMNamingNamingDriver* = Handle[XmlMNamingNamingDriver]
  XmlMNamingNamingDriver* {.importcpp: "XmlMNaming_NamingDriver",
                           header: "XmlMNaming_NamingDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMNamingNamingDriver*(aMessageDriver: Handle[MessageMessenger]): XmlMNamingNamingDriver {.
    constructor, importcpp: "XmlMNaming_NamingDriver(@)",
    header: "XmlMNaming_NamingDriver.hxx".}
proc newEmpty*(this: XmlMNamingNamingDriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMNaming_NamingDriver.hxx".}
proc paste*(this: XmlMNamingNamingDriver; theSource: XmlObjMgtPersistent;
           theTarget: Handle[TDF_Attribute];
           theRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamingDriver.hxx".}
proc paste*(this: XmlMNamingNamingDriver; theSource: Handle[TDF_Attribute];
           theTarget: var XmlObjMgtPersistent;
           theRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMNaming_NamingDriver.hxx".}
type
  XmlMNamingNamingDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMNaming_NamingDriver::get_type_name(@)",
                            header: "XmlMNaming_NamingDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMNaming_NamingDriver::get_type_descriptor(@)",
    header: "XmlMNaming_NamingDriver.hxx".}
proc dynamicType*(this: XmlMNamingNamingDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XmlMNaming_NamingDriver.hxx".}
