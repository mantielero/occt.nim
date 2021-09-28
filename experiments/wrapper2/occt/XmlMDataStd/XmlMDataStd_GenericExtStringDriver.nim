##  Copyright (c) 2020 OPEN CASCADE SAS
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
discard "forward decl of XmlMDataStd_NameDriver"
discard "forward decl of XmlMDataStd_GenericExtStringDriver"
type
  HandleC1C1* = Handle[XmlMDataStdGenericExtStringDriver]

## ! Attribute Driver.

type
  XmlMDataStdGenericExtStringDriver* {.importcpp: "XmlMDataStd_GenericExtStringDriver", header: "XmlMDataStd_GenericExtStringDriver.hxx",
                                      bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdGenericExtStringDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdGenericExtStringDriver {.
    constructor, importcpp: "XmlMDataStd_GenericExtStringDriver(@)",
    header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc newEmpty*(this: XmlMDataStdGenericExtStringDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc sourceType*(this: XmlMDataStdGenericExtStringDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "SourceType",
    header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc paste*(this: XmlMDataStdGenericExtStringDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc paste*(this: XmlMDataStdGenericExtStringDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_GenericExtStringDriver.hxx".}
type
  XmlMDataStdGenericExtStringDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_GenericExtStringDriver::get_type_name(@)",
                            header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_GenericExtStringDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_GenericExtStringDriver.hxx".}
proc dynamicType*(this: XmlMDataStdGenericExtStringDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_GenericExtStringDriver.hxx".}

























