##  Created on: 2002-12-15
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWProductDefinitionFormationRelationship* {.
      importcpp: "RWStepBasic_RWProductDefinitionFormationRelationship",
      header: "RWStepBasic_RWProductDefinitionFormationRelationship.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructRWStepBasic_RWProductDefinitionFormationRelationship*(): RWStepBasic_RWProductDefinitionFormationRelationship {.
    constructor,
    importcpp: "RWStepBasic_RWProductDefinitionFormationRelationship(@)",
    header: "RWStepBasic_RWProductDefinitionFormationRelationship.hxx".}
proc ReadStep*(this: RWStepBasic_RWProductDefinitionFormationRelationship;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_ProductDefinitionFormationRelationship]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepBasic_RWProductDefinitionFormationRelationship.hxx".}
proc WriteStep*(this: RWStepBasic_RWProductDefinitionFormationRelationship;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_ProductDefinitionFormationRelationship]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepBasic_RWProductDefinitionFormationRelationship.hxx".}
proc Share*(this: RWStepBasic_RWProductDefinitionFormationRelationship;
           ent: handle[StepBasic_ProductDefinitionFormationRelationship];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWProductDefinitionFormationRelationship.hxx".}