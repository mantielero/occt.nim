##  Created on: 2003-01-22
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_FeaCurveSectionGeometricRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWFeaCurveSectionGeometricRelationship* {.
      importcpp: "RWStepFEA_RWFeaCurveSectionGeometricRelationship",
      header: "RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructRWStepFEA_RWFeaCurveSectionGeometricRelationship*(): RWStepFEA_RWFeaCurveSectionGeometricRelationship {.
    constructor,
    importcpp: "RWStepFEA_RWFeaCurveSectionGeometricRelationship(@)",
    header: "RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx".}
proc ReadStep*(this: RWStepFEA_RWFeaCurveSectionGeometricRelationship;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepFEA_FeaCurveSectionGeometricRelationship]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx".}
proc WriteStep*(this: RWStepFEA_RWFeaCurveSectionGeometricRelationship;
               SW: var StepData_StepWriter;
               ent: handle[StepFEA_FeaCurveSectionGeometricRelationship]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx".}
proc Share*(this: RWStepFEA_RWFeaCurveSectionGeometricRelationship;
           ent: handle[StepFEA_FeaCurveSectionGeometricRelationship];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWFeaCurveSectionGeometricRelationship.hxx".}