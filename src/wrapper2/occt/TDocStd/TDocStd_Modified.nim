##  Created on: 1999-07-12
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_LabelMap,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_Modified"
discard "forward decl of TDocStd_Modified"
type
  Handle_TDocStd_Modified* = handle[TDocStd_Modified]

## ! Transient     attribute   wich     register modified
## ! labels. This attribute is attached to root label.

type
  TDocStd_Modified* {.importcpp: "TDocStd_Modified",
                     header: "TDocStd_Modified.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## API
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =================


proc IsEmpty*(access: TDF_Label): Standard_Boolean {.
    importcpp: "TDocStd_Modified::IsEmpty(@)", header: "TDocStd_Modified.hxx".}
proc Add*(alabel: TDF_Label): Standard_Boolean {.
    importcpp: "TDocStd_Modified::Add(@)", header: "TDocStd_Modified.hxx".}
proc Remove*(alabel: TDF_Label): Standard_Boolean {.
    importcpp: "TDocStd_Modified::Remove(@)", header: "TDocStd_Modified.hxx".}
proc Contains*(alabel: TDF_Label): Standard_Boolean {.
    importcpp: "TDocStd_Modified::Contains(@)", header: "TDocStd_Modified.hxx".}
proc Get*(access: TDF_Label): TDF_LabelMap {.importcpp: "TDocStd_Modified::Get(@)",
    header: "TDocStd_Modified.hxx".}
proc Clear*(access: TDF_Label) {.importcpp: "TDocStd_Modified::Clear(@)",
                              header: "TDocStd_Modified.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDocStd_Modified::GetID(@)",
                            header: "TDocStd_Modified.hxx".}
proc constructTDocStd_Modified*(): TDocStd_Modified {.constructor,
    importcpp: "TDocStd_Modified(@)", header: "TDocStd_Modified.hxx".}
proc IsEmpty*(this: TDocStd_Modified): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDocStd_Modified.hxx".}
proc Clear*(this: var TDocStd_Modified) {.importcpp: "Clear",
                                      header: "TDocStd_Modified.hxx".}
proc AddLabel*(this: var TDocStd_Modified; L: TDF_Label): Standard_Boolean {.
    importcpp: "AddLabel", header: "TDocStd_Modified.hxx".}
proc RemoveLabel*(this: var TDocStd_Modified; L: TDF_Label): Standard_Boolean {.
    importcpp: "RemoveLabel", header: "TDocStd_Modified.hxx".}
proc Get*(this: TDocStd_Modified): TDF_LabelMap {.noSideEffect, importcpp: "Get",
    header: "TDocStd_Modified.hxx".}
proc ID*(this: TDocStd_Modified): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_Modified.hxx".}
proc Restore*(this: var TDocStd_Modified; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_Modified.hxx".}
proc NewEmpty*(this: TDocStd_Modified): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_Modified.hxx".}
proc Paste*(this: TDocStd_Modified; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDocStd_Modified.hxx".}
proc Dump*(this: TDocStd_Modified; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_Modified.hxx".}
type
  TDocStd_Modifiedbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDocStd_Modified::get_type_name(@)",
                              header: "TDocStd_Modified.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_Modified::get_type_descriptor(@)",
    header: "TDocStd_Modified.hxx".}
proc DynamicType*(this: TDocStd_Modified): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Modified.hxx".}