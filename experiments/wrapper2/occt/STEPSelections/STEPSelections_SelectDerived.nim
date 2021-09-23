##  Created on: 1999-02-18
##  Created by: Pavel DURANDIN
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepSelect/StepSelect_StepType, ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPSelections_SelectDerived"
discard "forward decl of STEPSelections_SelectDerived"
type
  Handle_STEPSelections_SelectDerived* = handle[STEPSelections_SelectDerived]
  STEPSelections_SelectDerived* {.importcpp: "STEPSelections_SelectDerived",
                                 header: "STEPSelections_SelectDerived.hxx",
                                 bycopy.} = object of StepSelect_StepType


proc constructSTEPSelections_SelectDerived*(): STEPSelections_SelectDerived {.
    constructor, importcpp: "STEPSelections_SelectDerived(@)",
    header: "STEPSelections_SelectDerived.hxx".}
proc Matches*(this: STEPSelections_SelectDerived; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel];
             text: TCollection_AsciiString; exact: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "STEPSelections_SelectDerived.hxx".}
type
  STEPSelections_SelectDerivedbase_type* = StepSelect_StepType

proc get_type_name*(): cstring {.importcpp: "STEPSelections_SelectDerived::get_type_name(@)",
                              header: "STEPSelections_SelectDerived.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPSelections_SelectDerived::get_type_descriptor(@)",
    header: "STEPSelections_SelectDerived.hxx".}
proc DynamicType*(this: STEPSelections_SelectDerived): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectDerived.hxx".}