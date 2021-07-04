##  Created on: 2001-07-09
##  Created by: Julia DOROVSKIKH
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../XmlObjMgt/XmlObjMgt_RRelocationTable,
  ../XmlObjMgt/XmlObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlMDF_ADriver"
type
  Handle_XmlMDF_ADriver* = handle[XmlMDF_ADriver]

## ! Attribute Storage/Retrieval Driver.

type
  XmlMDF_ADriver* {.importcpp: "XmlMDF_ADriver", header: "XmlMDF_ADriver.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## the
                                                                                                             ## version
                                                                                                             ## number
                                                                                                             ## from
                                                                                                             ## which
                                                                                                             ## the
                                                                                                             ## driver
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## is
                                                                                                             ## available.


proc VersionNumber*(this: XmlMDF_ADriver): Standard_Integer {.noSideEffect,
    importcpp: "VersionNumber", header: "XmlMDF_ADriver.hxx".}
proc NewEmpty*(this: XmlMDF_ADriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_ADriver.hxx".}
proc SourceType*(this: XmlMDF_ADriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "SourceType", header: "XmlMDF_ADriver.hxx".}
proc TypeName*(this: XmlMDF_ADriver): TCollection_AsciiString {.noSideEffect,
    importcpp: "TypeName", header: "XmlMDF_ADriver.hxx".}
proc Namespace*(this: XmlMDF_ADriver): TCollection_AsciiString {.noSideEffect,
    importcpp: "Namespace", header: "XmlMDF_ADriver.hxx".}
proc Paste*(this: XmlMDF_ADriver; aSource: XmlObjMgt_Persistent;
           aTarget: handle[TDF_Attribute];
           aRelocTable: var XmlObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "XmlMDF_ADriver.hxx".}
proc Paste*(this: XmlMDF_ADriver; aSource: handle[TDF_Attribute];
           aTarget: var XmlObjMgt_Persistent;
           aRelocTable: var XmlObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_ADriver.hxx".}
proc MessageDriver*(this: XmlMDF_ADriver): handle[Message_Messenger] {.noSideEffect,
    importcpp: "MessageDriver", header: "XmlMDF_ADriver.hxx".}
type
  XmlMDF_ADriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XmlMDF_ADriver::get_type_name(@)",
                              header: "XmlMDF_ADriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XmlMDF_ADriver::get_type_descriptor(@)",
    header: "XmlMDF_ADriver.hxx".}
proc DynamicType*(this: XmlMDF_ADriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDF_ADriver.hxx".}