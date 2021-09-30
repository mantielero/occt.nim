##  Created on: 2007-07-03
##  Created by: Sergey ZARITCHNY
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
discard "forward decl of XmlMDataStd_NamedDataDriver"
discard "forward decl of XmlMDataStd_NamedDataDriver"
type
  HandleC1C1* = Handle[XmlMDataStdNamedDataDriver]
  XmlMDataStdNamedDataDriver* {.importcpp: "XmlMDataStd_NamedDataDriver",
                               header: "XmlMDataStd_NamedDataDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdNamedDataDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdNamedDataDriver {.
    constructor, importcpp: "XmlMDataStd_NamedDataDriver(@)",
    header: "XmlMDataStd_NamedDataDriver.hxx".}
proc newEmpty*(this: XmlMDataStdNamedDataDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataStd_NamedDataDriver.hxx".}
proc paste*(this: XmlMDataStdNamedDataDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_NamedDataDriver.hxx".}
proc paste*(this: XmlMDataStdNamedDataDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_NamedDataDriver.hxx".}
type
  XmlMDataStdNamedDataDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_NamedDataDriver::get_type_name(@)",
                            header: "XmlMDataStd_NamedDataDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_NamedDataDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_NamedDataDriver.hxx".}
proc dynamicType*(this: XmlMDataStdNamedDataDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_NamedDataDriver.hxx".}

























