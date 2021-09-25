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

discard "forward decl of StepBasic_Group"
discard "forward decl of StepAP214_AppliedGroupAssignment"
discard "forward decl of StepAP214_AppliedGroupAssignment"
type
  HandleStepAP214AppliedGroupAssignment* = Handle[StepAP214AppliedGroupAssignment]

## ! Representation of STEP entity AppliedGroupAssignment

type
  StepAP214AppliedGroupAssignment* {.importcpp: "StepAP214_AppliedGroupAssignment", header: "StepAP214_AppliedGroupAssignment.hxx",
                                    bycopy.} = object of StepBasicGroupAssignment ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructStepAP214AppliedGroupAssignment*(): StepAP214AppliedGroupAssignment {.
    constructor, importcpp: "StepAP214_AppliedGroupAssignment(@)",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc init*(this: var StepAP214AppliedGroupAssignment;
          aGroupAssignmentAssignedGroup: Handle[StepBasicGroup];
          aItems: Handle[StepAP214HArray1OfGroupItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc items*(this: StepAP214AppliedGroupAssignment): Handle[
    StepAP214HArray1OfGroupItem] {.noSideEffect, importcpp: "Items", header: "StepAP214_AppliedGroupAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedGroupAssignment;
              items: Handle[StepAP214HArray1OfGroupItem]) {.importcpp: "SetItems",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
type
  StepAP214AppliedGroupAssignmentbaseType* = StepBasicGroupAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedGroupAssignment::get_type_name(@)",
                            header: "StepAP214_AppliedGroupAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AppliedGroupAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedGroupAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedGroupAssignment.hxx".}
