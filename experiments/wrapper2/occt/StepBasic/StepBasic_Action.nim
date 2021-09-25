##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_Action"
type
  HandleStepBasicAction* = Handle[StepBasicAction]

## ! Representation of STEP entity Action

type
  StepBasicAction* {.importcpp: "StepBasic_Action", header: "StepBasic_Action.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicAction*(): StepBasicAction {.constructor,
    importcpp: "StepBasic_Action(@)", header: "StepBasic_Action.hxx".}
proc init*(this: var StepBasicAction; aName: Handle[TCollectionHAsciiString];
          hasDescription: bool; aDescription: Handle[TCollectionHAsciiString];
          aChosenMethod: Handle[StepBasicActionMethod]) {.importcpp: "Init",
    header: "StepBasic_Action.hxx".}
proc name*(this: StepBasicAction): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Action.hxx".}
proc setName*(this: var StepBasicAction; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Action.hxx".}
proc description*(this: StepBasicAction): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Action.hxx".}
proc setDescription*(this: var StepBasicAction;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Action.hxx".}
proc hasDescription*(this: StepBasicAction): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Action.hxx".}
proc chosenMethod*(this: StepBasicAction): Handle[StepBasicActionMethod] {.
    noSideEffect, importcpp: "ChosenMethod", header: "StepBasic_Action.hxx".}
proc setChosenMethod*(this: var StepBasicAction;
                     chosenMethod: Handle[StepBasicActionMethod]) {.
    importcpp: "SetChosenMethod", header: "StepBasic_Action.hxx".}
type
  StepBasicActionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Action::get_type_name(@)",
                            header: "StepBasic_Action.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Action::get_type_descriptor(@)",
    header: "StepBasic_Action.hxx".}
proc dynamicType*(this: StepBasicAction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Action.hxx".}
