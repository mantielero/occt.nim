##  Created on: 1999-03-12
##  Created by: data exchange team
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214_RWAppliedOrganizationAssignment* {.
      importcpp: "RWStepAP214_RWAppliedOrganizationAssignment",
      header: "RWStepAP214_RWAppliedOrganizationAssignment.hxx", bycopy.} = object


proc constructRWStepAP214_RWAppliedOrganizationAssignment*(): RWStepAP214_RWAppliedOrganizationAssignment {.
    constructor, importcpp: "RWStepAP214_RWAppliedOrganizationAssignment(@)",
    header: "RWStepAP214_RWAppliedOrganizationAssignment.hxx".}
proc ReadStep*(this: RWStepAP214_RWAppliedOrganizationAssignment;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP214_AppliedOrganizationAssignment]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP214_RWAppliedOrganizationAssignment.hxx".}
proc WriteStep*(this: RWStepAP214_RWAppliedOrganizationAssignment;
               SW: var StepData_StepWriter;
               ent: handle[StepAP214_AppliedOrganizationAssignment]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP214_RWAppliedOrganizationAssignment.hxx".}
proc Share*(this: RWStepAP214_RWAppliedOrganizationAssignment;
           ent: handle[StepAP214_AppliedOrganizationAssignment];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWAppliedOrganizationAssignment.hxx".}