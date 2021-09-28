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
discard "forward decl of XmlMDataStd_GenericEmptyDriver"
discard "forward decl of XmlMDataStd_GenericEmptyDriver"
type
  HandleC1C1* = Handle[XmlMDataStdGenericEmptyDriver]
  XmlMDataStdGenericEmptyDriver* {.importcpp: "XmlMDataStd_GenericEmptyDriver",
                                  header: "XmlMDataStd_GenericEmptyDriver.hxx",
                                  bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdGenericEmptyDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdGenericEmptyDriver {.
    constructor, importcpp: "XmlMDataStd_GenericEmptyDriver(@)",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc newEmpty*(this: XmlMDataStdGenericEmptyDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc sourceType*(this: XmlMDataStdGenericEmptyDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "SourceType",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc paste*(this: XmlMDataStdGenericEmptyDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc paste*(this: XmlMDataStdGenericEmptyDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_GenericEmptyDriver.hxx".}
type
  XmlMDataStdGenericEmptyDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_GenericEmptyDriver::get_type_name(@)",
                            header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_GenericEmptyDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc dynamicType*(this: XmlMDataStdGenericEmptyDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}

























