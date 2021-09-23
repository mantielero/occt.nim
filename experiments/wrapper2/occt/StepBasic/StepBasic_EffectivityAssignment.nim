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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Effectivity"
discard "forward decl of StepBasic_EffectivityAssignment"
discard "forward decl of StepBasic_EffectivityAssignment"
type
  Handle_StepBasic_EffectivityAssignment* = handle[StepBasic_EffectivityAssignment]

## ! Representation of STEP entity EffectivityAssignment

type
  StepBasic_EffectivityAssignment* {.importcpp: "StepBasic_EffectivityAssignment", header: "StepBasic_EffectivityAssignment.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Empty
                                                                       ## constructor


proc constructStepBasic_EffectivityAssignment*(): StepBasic_EffectivityAssignment {.
    constructor, importcpp: "StepBasic_EffectivityAssignment(@)",
    header: "StepBasic_EffectivityAssignment.hxx".}
proc Init*(this: var StepBasic_EffectivityAssignment;
          aAssignedEffectivity: handle[StepBasic_Effectivity]) {.
    importcpp: "Init", header: "StepBasic_EffectivityAssignment.hxx".}
proc AssignedEffectivity*(this: StepBasic_EffectivityAssignment): handle[
    StepBasic_Effectivity] {.noSideEffect, importcpp: "AssignedEffectivity",
                            header: "StepBasic_EffectivityAssignment.hxx".}
proc SetAssignedEffectivity*(this: var StepBasic_EffectivityAssignment;
                            AssignedEffectivity: handle[StepBasic_Effectivity]) {.
    importcpp: "SetAssignedEffectivity",
    header: "StepBasic_EffectivityAssignment.hxx".}
type
  StepBasic_EffectivityAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_EffectivityAssignment::get_type_name(@)",
                              header: "StepBasic_EffectivityAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_EffectivityAssignment::get_type_descriptor(@)",
    header: "StepBasic_EffectivityAssignment.hxx".}
proc DynamicType*(this: StepBasic_EffectivityAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_EffectivityAssignment.hxx".}