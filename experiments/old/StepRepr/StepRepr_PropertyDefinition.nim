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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_CharacterizedDefinition"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinition"
type
  HandleC1C1* = Handle[StepReprPropertyDefinition]

## ! Representation of STEP entity PropertyDefinition

type
  StepReprPropertyDefinition* {.importcpp: "StepRepr_PropertyDefinition",
                               header: "StepRepr_PropertyDefinition.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepReprPropertyDefinition*(): StepReprPropertyDefinition {.
    constructor, importcpp: "StepRepr_PropertyDefinition(@)",
    header: "StepRepr_PropertyDefinition.hxx".}
proc init*(this: var StepReprPropertyDefinition;
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString];
          aDefinition: StepReprCharacterizedDefinition) {.importcpp: "Init",
    header: "StepRepr_PropertyDefinition.hxx".}
proc name*(this: StepReprPropertyDefinition): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_PropertyDefinition.hxx".}
proc setName*(this: var StepReprPropertyDefinition;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_PropertyDefinition.hxx".}
proc description*(this: StepReprPropertyDefinition): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepRepr_PropertyDefinition.hxx".}
proc setDescription*(this: var StepReprPropertyDefinition;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_PropertyDefinition.hxx".}
proc hasDescription*(this: StepReprPropertyDefinition): StandardBoolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepRepr_PropertyDefinition.hxx".}
proc definition*(this: StepReprPropertyDefinition): StepReprCharacterizedDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepRepr_PropertyDefinition.hxx".}
proc setDefinition*(this: var StepReprPropertyDefinition;
                   definition: StepReprCharacterizedDefinition) {.
    importcpp: "SetDefinition", header: "StepRepr_PropertyDefinition.hxx".}
type
  StepReprPropertyDefinitionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_PropertyDefinition::get_type_name(@)",
                            header: "StepRepr_PropertyDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_PropertyDefinition::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinition.hxx".}
proc dynamicType*(this: StepReprPropertyDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_PropertyDefinition.hxx".}