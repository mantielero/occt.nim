##  Created on: 2000-07-03
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_CharacterizedDefinition, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_CharacterizedDefinition"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinition"
type
  Handle_StepRepr_PropertyDefinition* = handle[StepRepr_PropertyDefinition]

## ! Representation of STEP entity PropertyDefinition

type
  StepRepr_PropertyDefinition* {.importcpp: "StepRepr_PropertyDefinition",
                                header: "StepRepr_PropertyDefinition.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepRepr_PropertyDefinition*(): StepRepr_PropertyDefinition {.
    constructor, importcpp: "StepRepr_PropertyDefinition(@)",
    header: "StepRepr_PropertyDefinition.hxx".}
proc Init*(this: var StepRepr_PropertyDefinition;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aDefinition: StepRepr_CharacterizedDefinition) {.importcpp: "Init",
    header: "StepRepr_PropertyDefinition.hxx".}
proc Name*(this: StepRepr_PropertyDefinition): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_PropertyDefinition.hxx".}
proc SetName*(this: var StepRepr_PropertyDefinition;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_PropertyDefinition.hxx".}
proc Description*(this: StepRepr_PropertyDefinition): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepRepr_PropertyDefinition.hxx".}
proc SetDescription*(this: var StepRepr_PropertyDefinition;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_PropertyDefinition.hxx".}
proc HasDescription*(this: StepRepr_PropertyDefinition): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepRepr_PropertyDefinition.hxx".}
proc Definition*(this: StepRepr_PropertyDefinition): StepRepr_CharacterizedDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepRepr_PropertyDefinition.hxx".}
proc SetDefinition*(this: var StepRepr_PropertyDefinition;
                   Definition: StepRepr_CharacterizedDefinition) {.
    importcpp: "SetDefinition", header: "StepRepr_PropertyDefinition.hxx".}
type
  StepRepr_PropertyDefinitionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_PropertyDefinition::get_type_name(@)",
                              header: "StepRepr_PropertyDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_PropertyDefinition::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinition.hxx".}
proc DynamicType*(this: StepRepr_PropertyDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_PropertyDefinition.hxx".}