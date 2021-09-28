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

discard "forward decl of StepBasic_Certification"
discard "forward decl of StepBasic_CertificationAssignment"
discard "forward decl of StepBasic_CertificationAssignment"
type
  HandleC1C1* = Handle[StepBasicCertificationAssignment]

## ! Representation of STEP entity CertificationAssignment

type
  StepBasicCertificationAssignment* {.importcpp: "StepBasic_CertificationAssignment", header: "StepBasic_CertificationAssignment.hxx",
                                     bycopy.} = object of StandardTransient ## ! Empty
                                                                       ## constructor


proc constructStepBasicCertificationAssignment*(): StepBasicCertificationAssignment {.
    constructor, importcpp: "StepBasic_CertificationAssignment(@)",
    header: "StepBasic_CertificationAssignment.hxx".}
proc init*(this: var StepBasicCertificationAssignment;
          aAssignedCertification: Handle[StepBasicCertification]) {.
    importcpp: "Init", header: "StepBasic_CertificationAssignment.hxx".}
proc assignedCertification*(this: StepBasicCertificationAssignment): Handle[
    StepBasicCertification] {.noSideEffect, importcpp: "AssignedCertification",
                             header: "StepBasic_CertificationAssignment.hxx".}
proc setAssignedCertification*(this: var StepBasicCertificationAssignment;
    assignedCertification: Handle[StepBasicCertification]) {.
    importcpp: "SetAssignedCertification",
    header: "StepBasic_CertificationAssignment.hxx".}
type
  StepBasicCertificationAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_CertificationAssignment::get_type_name(@)",
                            header: "StepBasic_CertificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_CertificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_CertificationAssignment.hxx".}
proc dynamicType*(this: StepBasicCertificationAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CertificationAssignment.hxx".}

























