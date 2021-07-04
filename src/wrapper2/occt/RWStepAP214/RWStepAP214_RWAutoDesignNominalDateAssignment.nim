##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepAP214_AutoDesignNominalDateAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214_RWAutoDesignNominalDateAssignment* {.
      importcpp: "RWStepAP214_RWAutoDesignNominalDateAssignment",
      header: "RWStepAP214_RWAutoDesignNominalDateAssignment.hxx", bycopy.} = object


proc constructRWStepAP214_RWAutoDesignNominalDateAssignment*(): RWStepAP214_RWAutoDesignNominalDateAssignment {.
    constructor, importcpp: "RWStepAP214_RWAutoDesignNominalDateAssignment(@)",
    header: "RWStepAP214_RWAutoDesignNominalDateAssignment.hxx".}
proc ReadStep*(this: RWStepAP214_RWAutoDesignNominalDateAssignment;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP214_AutoDesignNominalDateAssignment]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP214_RWAutoDesignNominalDateAssignment.hxx".}
proc WriteStep*(this: RWStepAP214_RWAutoDesignNominalDateAssignment;
               SW: var StepData_StepWriter;
               ent: handle[StepAP214_AutoDesignNominalDateAssignment]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP214_RWAutoDesignNominalDateAssignment.hxx".}
proc Share*(this: RWStepAP214_RWAutoDesignNominalDateAssignment;
           ent: handle[StepAP214_AutoDesignNominalDateAssignment];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWAutoDesignNominalDateAssignment.hxx".}