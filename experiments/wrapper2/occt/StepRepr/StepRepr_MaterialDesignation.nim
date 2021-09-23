##  Created on: 1998-07-24
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  StepRepr_CharacterizedDefinition, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_CharacterizedDefinition"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepRepr_MaterialDesignation"
type
  Handle_StepRepr_MaterialDesignation* = handle[StepRepr_MaterialDesignation]
  StepRepr_MaterialDesignation* {.importcpp: "StepRepr_MaterialDesignation",
                                 header: "StepRepr_MaterialDesignation.hxx",
                                 bycopy.} = object of Standard_Transient


proc constructStepRepr_MaterialDesignation*(): StepRepr_MaterialDesignation {.
    constructor, importcpp: "StepRepr_MaterialDesignation(@)",
    header: "StepRepr_MaterialDesignation.hxx".}
proc Init*(this: var StepRepr_MaterialDesignation;
          aName: handle[TCollection_HAsciiString];
          aOfDefinition: StepRepr_CharacterizedDefinition) {.importcpp: "Init",
    header: "StepRepr_MaterialDesignation.hxx".}
proc SetName*(this: var StepRepr_MaterialDesignation;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_MaterialDesignation.hxx".}
proc Name*(this: StepRepr_MaterialDesignation): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_MaterialDesignation.hxx".}
proc SetOfDefinition*(this: var StepRepr_MaterialDesignation;
                     aOfDefinition: StepRepr_CharacterizedDefinition) {.
    importcpp: "SetOfDefinition", header: "StepRepr_MaterialDesignation.hxx".}
proc OfDefinition*(this: StepRepr_MaterialDesignation): StepRepr_CharacterizedDefinition {.
    noSideEffect, importcpp: "OfDefinition",
    header: "StepRepr_MaterialDesignation.hxx".}
type
  StepRepr_MaterialDesignationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_MaterialDesignation::get_type_name(@)",
                              header: "StepRepr_MaterialDesignation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_MaterialDesignation::get_type_descriptor(@)",
    header: "StepRepr_MaterialDesignation.hxx".}
proc DynamicType*(this: StepRepr_MaterialDesignation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MaterialDesignation.hxx".}