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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../XmlMDF/XmlMDF_ADriver,
  ../Standard/Standard_Boolean, ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDataStd_GenericEmptyDriver"
discard "forward decl of XmlMDataStd_GenericEmptyDriver"
type
  Handle_XmlMDataStd_GenericEmptyDriver* = handle[XmlMDataStd_GenericEmptyDriver]
  XmlMDataStd_GenericEmptyDriver* {.importcpp: "XmlMDataStd_GenericEmptyDriver", header: "XmlMDataStd_GenericEmptyDriver.hxx",
                                   bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStd_GenericEmptyDriver*(
    theMessageDriver: handle[Message_Messenger]): XmlMDataStd_GenericEmptyDriver {.
    constructor, importcpp: "XmlMDataStd_GenericEmptyDriver(@)",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc NewEmpty*(this: XmlMDataStd_GenericEmptyDriver): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc SourceType*(this: XmlMDataStd_GenericEmptyDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "SourceType",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc Paste*(this: XmlMDataStd_GenericEmptyDriver; Source: XmlObjMgt_Persistent;
           Target: handle[TDF_Attribute];
           RelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc Paste*(this: XmlMDataStd_GenericEmptyDriver; Source: handle[TDF_Attribute];
           Target: var XmlObjMgt_Persistent;
           RelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_GenericEmptyDriver.hxx".}
type
  XmlMDataStd_GenericEmptyDriverbase_type* = XmlMDF_ADriver

proc get_type_name*(): cstring {.importcpp: "XmlMDataStd_GenericEmptyDriver::get_type_name(@)",
                              header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDataStd_GenericEmptyDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}
proc DynamicType*(this: XmlMDataStd_GenericEmptyDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_GenericEmptyDriver.hxx".}