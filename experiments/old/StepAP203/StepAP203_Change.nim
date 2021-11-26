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

discard "forward decl of StepBasic_Action"
discard "forward decl of StepAP203_Change"
discard "forward decl of StepAP203_Change"
type
  HandleC1C1* = Handle[StepAP203Change]

## ! Representation of STEP entity Change

type
  StepAP203Change* {.importcpp: "StepAP203_Change", header: "StepAP203_Change.hxx",
                    bycopy.} = object of StepBasicActionAssignment ## ! Empty constructor


proc constructStepAP203Change*(): StepAP203Change {.constructor,
    importcpp: "StepAP203_Change(@)", header: "StepAP203_Change.hxx".}
proc init*(this: var StepAP203Change;
          aActionAssignmentAssignedAction: Handle[StepBasicAction];
          aItems: Handle[StepAP203HArray1OfWorkItem]) {.importcpp: "Init",
    header: "StepAP203_Change.hxx".}
proc items*(this: StepAP203Change): Handle[StepAP203HArray1OfWorkItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_Change.hxx".}
proc setItems*(this: var StepAP203Change; items: Handle[StepAP203HArray1OfWorkItem]) {.
    importcpp: "SetItems", header: "StepAP203_Change.hxx".}
type
  StepAP203ChangebaseType* = StepBasicActionAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_Change::get_type_name(@)",
                            header: "StepAP203_Change.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_Change::get_type_descriptor(@)",
    header: "StepAP203_Change.hxx".}
proc dynamicType*(this: StepAP203Change): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP203_Change.hxx".}