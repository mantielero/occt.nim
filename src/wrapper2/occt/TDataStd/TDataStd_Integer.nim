##  Created on: 1997-02-06
##  Created by: Denis PASCAL
##  Copyright (c) 1997-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Integer"
discard "forward decl of TDataStd_Integer"
type
  Handle_TDataStd_Integer* = handle[TDataStd_Integer]

## ! The basis to define an integer attribute.

type
  TDataStd_Integer* {.importcpp: "TDataStd_Integer",
                     header: "TDataStd_Integer.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =============
                                                                                 ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## GUID
                                                                                 ## for
                                                                                 ## integers.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Integer::GetID(@)",
                            header: "TDataStd_Integer.hxx".}
proc Set*(label: TDF_Label; value: Standard_Integer): handle[TDataStd_Integer] {.
    importcpp: "TDataStd_Integer::Set(@)", header: "TDataStd_Integer.hxx".}
proc Set*(label: TDF_Label; guid: Standard_GUID; value: Standard_Integer): handle[
    TDataStd_Integer] {.importcpp: "TDataStd_Integer::Set(@)",
                       header: "TDataStd_Integer.hxx".}
proc Set*(this: var TDataStd_Integer; V: Standard_Integer) {.importcpp: "Set",
    header: "TDataStd_Integer.hxx".}
proc SetID*(this: var TDataStd_Integer; guid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_Integer.hxx".}
proc SetID*(this: var TDataStd_Integer) {.importcpp: "SetID",
                                      header: "TDataStd_Integer.hxx".}
proc Get*(this: TDataStd_Integer): Standard_Integer {.noSideEffect, importcpp: "Get",
    header: "TDataStd_Integer.hxx".}
proc IsCaptured*(this: TDataStd_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCaptured", header: "TDataStd_Integer.hxx".}
proc ID*(this: TDataStd_Integer): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Integer.hxx".}
proc Restore*(this: var TDataStd_Integer; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Integer.hxx".}
proc NewEmpty*(this: TDataStd_Integer): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Integer.hxx".}
proc Paste*(this: TDataStd_Integer; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Integer.hxx".}
proc Dump*(this: TDataStd_Integer; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Integer.hxx".}
proc constructTDataStd_Integer*(): TDataStd_Integer {.constructor,
    importcpp: "TDataStd_Integer(@)", header: "TDataStd_Integer.hxx".}
proc DumpJson*(this: TDataStd_Integer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Integer.hxx".}
type
  TDataStd_Integerbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_Integer::get_type_name(@)",
                              header: "TDataStd_Integer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_Integer::get_type_descriptor(@)",
    header: "TDataStd_Integer.hxx".}
proc DynamicType*(this: TDataStd_Integer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Integer.hxx".}