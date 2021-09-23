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
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214_RWAppliedSecurityClassificationAssignment* {.
      importcpp: "RWStepAP214_RWAppliedSecurityClassificationAssignment",
      header: "RWStepAP214_RWAppliedSecurityClassificationAssignment.hxx", bycopy.} = object


proc constructRWStepAP214_RWAppliedSecurityClassificationAssignment*(): RWStepAP214_RWAppliedSecurityClassificationAssignment {.
    constructor,
    importcpp: "RWStepAP214_RWAppliedSecurityClassificationAssignment(@)",
    header: "RWStepAP214_RWAppliedSecurityClassificationAssignment.hxx".}
proc ReadStep*(this: RWStepAP214_RWAppliedSecurityClassificationAssignment;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP214_AppliedSecurityClassificationAssignment]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP214_RWAppliedSecurityClassificationAssignment.hxx".}
proc WriteStep*(this: RWStepAP214_RWAppliedSecurityClassificationAssignment;
               SW: var StepData_StepWriter;
               ent: handle[StepAP214_AppliedSecurityClassificationAssignment]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP214_RWAppliedSecurityClassificationAssignment.hxx".}
proc Share*(this: RWStepAP214_RWAppliedSecurityClassificationAssignment;
           ent: handle[StepAP214_AppliedSecurityClassificationAssignment];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWAppliedSecurityClassificationAssignment.hxx".}