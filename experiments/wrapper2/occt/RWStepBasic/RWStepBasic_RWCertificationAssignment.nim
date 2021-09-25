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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_CertificationAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWCertificationAssignment* {.
      importcpp: "RWStepBasic_RWCertificationAssignment",
      header: "RWStepBasic_RWCertificationAssignment.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor


proc constructRWStepBasicRWCertificationAssignment*(): RWStepBasicRWCertificationAssignment {.
    constructor, importcpp: "RWStepBasic_RWCertificationAssignment(@)",
    header: "RWStepBasic_RWCertificationAssignment.hxx".}
proc readStep*(this: RWStepBasicRWCertificationAssignment;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicCertificationAssignment]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWCertificationAssignment.hxx".}
proc writeStep*(this: RWStepBasicRWCertificationAssignment;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicCertificationAssignment]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWCertificationAssignment.hxx".}
proc share*(this: RWStepBasicRWCertificationAssignment;
           ent: Handle[StepBasicCertificationAssignment];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWCertificationAssignment.hxx".}
