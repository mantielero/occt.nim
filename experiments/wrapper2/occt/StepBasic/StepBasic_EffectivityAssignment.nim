##  Created on: 2000-05-10
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

discard "forward decl of StepBasic_Effectivity"
discard "forward decl of StepBasic_EffectivityAssignment"
discard "forward decl of StepBasic_EffectivityAssignment"
type
  HandleStepBasicEffectivityAssignment* = Handle[StepBasicEffectivityAssignment]

## ! Representation of STEP entity EffectivityAssignment

type
  StepBasicEffectivityAssignment* {.importcpp: "StepBasic_EffectivityAssignment", header: "StepBasic_EffectivityAssignment.hxx",
                                   bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicEffectivityAssignment*(): StepBasicEffectivityAssignment {.
    constructor, importcpp: "StepBasic_EffectivityAssignment(@)",
    header: "StepBasic_EffectivityAssignment.hxx".}
proc init*(this: var StepBasicEffectivityAssignment;
          aAssignedEffectivity: Handle[StepBasicEffectivity]) {.importcpp: "Init",
    header: "StepBasic_EffectivityAssignment.hxx".}
proc assignedEffectivity*(this: StepBasicEffectivityAssignment): Handle[
    StepBasicEffectivity] {.noSideEffect, importcpp: "AssignedEffectivity",
                           header: "StepBasic_EffectivityAssignment.hxx".}
proc setAssignedEffectivity*(this: var StepBasicEffectivityAssignment;
                            assignedEffectivity: Handle[StepBasicEffectivity]) {.
    importcpp: "SetAssignedEffectivity",
    header: "StepBasic_EffectivityAssignment.hxx".}
type
  StepBasicEffectivityAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_EffectivityAssignment::get_type_name(@)",
                            header: "StepBasic_EffectivityAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_EffectivityAssignment::get_type_descriptor(@)",
    header: "StepBasic_EffectivityAssignment.hxx".}
proc dynamicType*(this: StepBasicEffectivityAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_EffectivityAssignment.hxx".}
