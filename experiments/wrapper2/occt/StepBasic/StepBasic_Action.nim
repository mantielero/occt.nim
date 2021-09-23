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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_Action"
type
  Handle_StepBasic_Action* = handle[StepBasic_Action]

## ! Representation of STEP entity Action

type
  StepBasic_Action* {.importcpp: "StepBasic_Action",
                     header: "StepBasic_Action.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructStepBasic_Action*(): StepBasic_Action {.constructor,
    importcpp: "StepBasic_Action(@)", header: "StepBasic_Action.hxx".}
proc Init*(this: var StepBasic_Action; aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aChosenMethod: handle[StepBasic_ActionMethod]) {.importcpp: "Init",
    header: "StepBasic_Action.hxx".}
proc Name*(this: StepBasic_Action): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Action.hxx".}
proc SetName*(this: var StepBasic_Action; Name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Action.hxx".}
proc Description*(this: StepBasic_Action): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Action.hxx".}
proc SetDescription*(this: var StepBasic_Action;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Action.hxx".}
proc HasDescription*(this: StepBasic_Action): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Action.hxx".}
proc ChosenMethod*(this: StepBasic_Action): handle[StepBasic_ActionMethod] {.
    noSideEffect, importcpp: "ChosenMethod", header: "StepBasic_Action.hxx".}
proc SetChosenMethod*(this: var StepBasic_Action;
                     ChosenMethod: handle[StepBasic_ActionMethod]) {.
    importcpp: "SetChosenMethod", header: "StepBasic_Action.hxx".}
type
  StepBasic_Actionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Action::get_type_name(@)",
                              header: "StepBasic_Action.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Action::get_type_descriptor(@)",
    header: "StepBasic_Action.hxx".}
proc DynamicType*(this: StepBasic_Action): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Action.hxx".}