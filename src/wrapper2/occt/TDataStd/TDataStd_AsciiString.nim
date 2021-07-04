##  Created on: 2007-07-31
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  ../Standard/Standard_GUID

discard "forward decl of TDF_Label"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_AsciiString"
discard "forward decl of TDataStd_AsciiString"
type
  Handle_TDataStd_AsciiString* = handle[TDataStd_AsciiString]

## ! Used to define an AsciiString attribute containing a TCollection_AsciiString

type
  TDataStd_AsciiString* {.importcpp: "TDataStd_AsciiString",
                         header: "TDataStd_AsciiString.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                         ## of
                                                                                         ## the
                                                                                         ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_AsciiString::GetID(@)",
                            header: "TDataStd_AsciiString.hxx".}
proc Set*(label: TDF_Label; string: TCollection_AsciiString): handle[
    TDataStd_AsciiString] {.importcpp: "TDataStd_AsciiString::Set(@)",
                           header: "TDataStd_AsciiString.hxx".}
proc Set*(label: TDF_Label; guid: Standard_GUID; string: TCollection_AsciiString): handle[
    TDataStd_AsciiString] {.importcpp: "TDataStd_AsciiString::Set(@)",
                           header: "TDataStd_AsciiString.hxx".}
proc constructTDataStd_AsciiString*(): TDataStd_AsciiString {.constructor,
    importcpp: "TDataStd_AsciiString(@)", header: "TDataStd_AsciiString.hxx".}
proc Set*(this: var TDataStd_AsciiString; S: TCollection_AsciiString) {.
    importcpp: "Set", header: "TDataStd_AsciiString.hxx".}
proc SetID*(this: var TDataStd_AsciiString; guid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_AsciiString.hxx".}
proc SetID*(this: var TDataStd_AsciiString) {.importcpp: "SetID",
    header: "TDataStd_AsciiString.hxx".}
proc Get*(this: TDataStd_AsciiString): TCollection_AsciiString {.noSideEffect,
    importcpp: "Get", header: "TDataStd_AsciiString.hxx".}
proc IsEmpty*(this: TDataStd_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_AsciiString.hxx".}
proc ID*(this: TDataStd_AsciiString): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_AsciiString.hxx".}
proc Restore*(this: var TDataStd_AsciiString; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_AsciiString.hxx".}
proc NewEmpty*(this: TDataStd_AsciiString): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_AsciiString.hxx".}
proc Paste*(this: TDataStd_AsciiString; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_AsciiString.hxx".}
proc Dump*(this: TDataStd_AsciiString; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_AsciiString.hxx".}
proc DumpJson*(this: TDataStd_AsciiString; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_AsciiString.hxx".}
type
  TDataStd_AsciiStringbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_AsciiString::get_type_name(@)",
                              header: "TDataStd_AsciiString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_AsciiString::get_type_descriptor(@)",
    header: "TDataStd_AsciiString.hxx".}
proc DynamicType*(this: TDataStd_AsciiString): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_AsciiString.hxx".}