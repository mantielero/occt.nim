##  Created on: 2002-10-29
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_CString, ../Standard/Standard_Type,
  ../Standard/Standard_Boolean, ../BinObjMgt/BinObjMgt_RRelocationTable,
  ../BinObjMgt/BinObjMgt_SRelocationTable

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of BinMDF_ADriver"
discard "forward decl of BinMDF_ADriver"
type
  Handle_BinMDF_ADriver* = handle[BinMDF_ADriver]

## ! Attribute Storage/Retrieval Driver.

type
  BinMDF_ADriver* {.importcpp: "BinMDF_ADriver", header: "BinMDF_ADriver.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## new
                                                                                                             ## attribute
                                                                                                             ## from
                                                                                                             ## TDF.


proc NewEmpty*(this: BinMDF_ADriver): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_ADriver.hxx".}
proc SourceType*(this: BinMDF_ADriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "SourceType", header: "BinMDF_ADriver.hxx".}
proc TypeName*(this: BinMDF_ADriver): TCollection_AsciiString {.noSideEffect,
    importcpp: "TypeName", header: "BinMDF_ADriver.hxx".}
proc Paste*(this: BinMDF_ADriver; aSource: BinObjMgt_Persistent;
           aTarget: handle[TDF_Attribute];
           aRelocTable: var BinObjMgt_RRelocationTable): Standard_Boolean {.
    noSideEffect, importcpp: "Paste", header: "BinMDF_ADriver.hxx".}
proc Paste*(this: BinMDF_ADriver; aSource: handle[TDF_Attribute];
           aTarget: var BinObjMgt_Persistent;
           aRelocTable: var BinObjMgt_SRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_ADriver.hxx".}
proc MessageDriver*(this: BinMDF_ADriver): handle[Message_Messenger] {.noSideEffect,
    importcpp: "MessageDriver", header: "BinMDF_ADriver.hxx".}
type
  BinMDF_ADriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BinMDF_ADriver::get_type_name(@)",
                              header: "BinMDF_ADriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDF_ADriver::get_type_descriptor(@)",
    header: "BinMDF_ADriver.hxx".}
proc DynamicType*(this: BinMDF_ADriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDF_ADriver.hxx".}