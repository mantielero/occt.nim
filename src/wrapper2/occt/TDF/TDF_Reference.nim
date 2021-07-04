##  Created on: 2000-03-01
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, TDF_Label, TDF_Attribute,
  ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_Reference"
discard "forward decl of TDF_Reference"
type
  Handle_TDF_Reference* = handle[TDF_Reference]

## ! This  attribute is  used to  store in the  framework a
## ! reference to an other label.

type
  TDF_Reference* {.importcpp: "TDF_Reference", header: "TDF_Reference.hxx", bycopy.} = object of TDF_Attribute


proc GetID*(): Standard_GUID {.importcpp: "TDF_Reference::GetID(@)",
                            header: "TDF_Reference.hxx".}
proc Set*(I: TDF_Label; Origin: TDF_Label): handle[TDF_Reference] {.
    importcpp: "TDF_Reference::Set(@)", header: "TDF_Reference.hxx".}
proc Set*(this: var TDF_Reference; Origin: TDF_Label) {.importcpp: "Set",
    header: "TDF_Reference.hxx".}
proc Get*(this: TDF_Reference): TDF_Label {.noSideEffect, importcpp: "Get",
                                        header: "TDF_Reference.hxx".}
proc ID*(this: TDF_Reference): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDF_Reference.hxx".}
proc Restore*(this: var TDF_Reference; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDF_Reference.hxx".}
proc NewEmpty*(this: TDF_Reference): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDF_Reference.hxx".}
proc Paste*(this: TDF_Reference; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDF_Reference.hxx".}
proc References*(this: TDF_Reference; DS: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDF_Reference.hxx".}
proc Dump*(this: TDF_Reference; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Reference.hxx".}
proc constructTDF_Reference*(): TDF_Reference {.constructor,
    importcpp: "TDF_Reference(@)", header: "TDF_Reference.hxx".}
proc DumpJson*(this: TDF_Reference; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_Reference.hxx".}
type
  TDF_Referencebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDF_Reference::get_type_name(@)",
                              header: "TDF_Reference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_Reference::get_type_descriptor(@)",
    header: "TDF_Reference.hxx".}
proc DynamicType*(this: TDF_Reference): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Reference.hxx".}