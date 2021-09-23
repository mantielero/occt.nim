##  Created on: 1999-08-02
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Label,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Current"
discard "forward decl of TDataStd_Current"
type
  Handle_TDataStd_Current* = handle[TDataStd_Current]

## ! this attribute,  located at root label,  manage an
## ! access to a current label.

type
  TDataStd_Current* {.importcpp: "TDataStd_Current",
                     header: "TDataStd_Current.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Current::GetID(@)",
                            header: "TDataStd_Current.hxx".}
proc Set*(L: TDF_Label) {.importcpp: "TDataStd_Current::Set(@)",
                       header: "TDataStd_Current.hxx".}
proc Get*(acces: TDF_Label): TDF_Label {.importcpp: "TDataStd_Current::Get(@)",
                                     header: "TDataStd_Current.hxx".}
proc Has*(acces: TDF_Label): Standard_Boolean {.
    importcpp: "TDataStd_Current::Has(@)", header: "TDataStd_Current.hxx".}
proc constructTDataStd_Current*(): TDataStd_Current {.constructor,
    importcpp: "TDataStd_Current(@)", header: "TDataStd_Current.hxx".}
proc SetLabel*(this: var TDataStd_Current; current: TDF_Label) {.
    importcpp: "SetLabel", header: "TDataStd_Current.hxx".}
proc GetLabel*(this: TDataStd_Current): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "TDataStd_Current.hxx".}
proc ID*(this: TDataStd_Current): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Current.hxx".}
proc Restore*(this: var TDataStd_Current; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Current.hxx".}
proc NewEmpty*(this: TDataStd_Current): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Current.hxx".}
proc Paste*(this: TDataStd_Current; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Current.hxx".}
proc Dump*(this: TDataStd_Current; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Current.hxx".}
proc DumpJson*(this: TDataStd_Current; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Current.hxx".}
type
  TDataStd_Currentbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_Current::get_type_name(@)",
                              header: "TDataStd_Current.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_Current::get_type_descriptor(@)",
    header: "TDataStd_Current.hxx".}
proc DynamicType*(this: TDataStd_Current): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Current.hxx".}