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
  ../Standard/Standard, ../Standard/Standard_Type, StepAP214_HArray1OfGroupItem,
  ../StepBasic/StepBasic_GroupAssignment

discard "forward decl of StepBasic_Group"
discard "forward decl of StepAP214_AppliedGroupAssignment"
discard "forward decl of StepAP214_AppliedGroupAssignment"
type
  Handle_StepAP214_AppliedGroupAssignment* = handle[
      StepAP214_AppliedGroupAssignment]

## ! Representation of STEP entity AppliedGroupAssignment

type
  StepAP214_AppliedGroupAssignment* {.importcpp: "StepAP214_AppliedGroupAssignment", header: "StepAP214_AppliedGroupAssignment.hxx",
                                     bycopy.} = object of StepBasic_GroupAssignment ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructStepAP214_AppliedGroupAssignment*(): StepAP214_AppliedGroupAssignment {.
    constructor, importcpp: "StepAP214_AppliedGroupAssignment(@)",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedGroupAssignment;
          aGroupAssignment_AssignedGroup: handle[StepBasic_Group];
          aItems: handle[StepAP214_HArray1OfGroupItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc Items*(this: StepAP214_AppliedGroupAssignment): handle[
    StepAP214_HArray1OfGroupItem] {.noSideEffect, importcpp: "Items", header: "StepAP214_AppliedGroupAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedGroupAssignment;
              Items: handle[StepAP214_HArray1OfGroupItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedGroupAssignment.hxx".}
type
  StepAP214_AppliedGroupAssignmentbase_type* = StepBasic_GroupAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedGroupAssignment::get_type_name(@)",
                              header: "StepAP214_AppliedGroupAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AppliedGroupAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedGroupAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedGroupAssignment.hxx".}