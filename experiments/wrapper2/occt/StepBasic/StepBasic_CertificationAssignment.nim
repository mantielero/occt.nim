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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Certification"
discard "forward decl of StepBasic_CertificationAssignment"
discard "forward decl of StepBasic_CertificationAssignment"
type
  Handle_StepBasic_CertificationAssignment* = handle[
      StepBasic_CertificationAssignment]

## ! Representation of STEP entity CertificationAssignment

type
  StepBasic_CertificationAssignment* {.importcpp: "StepBasic_CertificationAssignment", header: "StepBasic_CertificationAssignment.hxx",
                                      bycopy.} = object of Standard_Transient ## ! Empty
                                                                         ## constructor


proc constructStepBasic_CertificationAssignment*(): StepBasic_CertificationAssignment {.
    constructor, importcpp: "StepBasic_CertificationAssignment(@)",
    header: "StepBasic_CertificationAssignment.hxx".}
proc Init*(this: var StepBasic_CertificationAssignment;
          aAssignedCertification: handle[StepBasic_Certification]) {.
    importcpp: "Init", header: "StepBasic_CertificationAssignment.hxx".}
proc AssignedCertification*(this: StepBasic_CertificationAssignment): handle[
    StepBasic_Certification] {.noSideEffect, importcpp: "AssignedCertification",
                              header: "StepBasic_CertificationAssignment.hxx".}
proc SetAssignedCertification*(this: var StepBasic_CertificationAssignment;
    AssignedCertification: handle[StepBasic_Certification]) {.
    importcpp: "SetAssignedCertification",
    header: "StepBasic_CertificationAssignment.hxx".}
type
  StepBasic_CertificationAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_CertificationAssignment::get_type_name(@)",
                              header: "StepBasic_CertificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_CertificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_CertificationAssignment.hxx".}
proc DynamicType*(this: StepBasic_CertificationAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CertificationAssignment.hxx".}