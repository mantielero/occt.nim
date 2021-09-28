##  Created on: 2002-12-12
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWPropertyDefinitionRelationship* {.
      importcpp: "RWStepRepr_RWPropertyDefinitionRelationship",
      header: "RWStepRepr_RWPropertyDefinitionRelationship.hxx", bycopy.} = object ## !
                                                                              ## Empty
                                                                              ## constructor


proc constructRWStepReprRWPropertyDefinitionRelationship*(): RWStepReprRWPropertyDefinitionRelationship {.
    constructor, importcpp: "RWStepRepr_RWPropertyDefinitionRelationship(@)",
    header: "RWStepRepr_RWPropertyDefinitionRelationship.hxx".}
proc readStep*(this: RWStepReprRWPropertyDefinitionRelationship;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprPropertyDefinitionRelationship]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepRepr_RWPropertyDefinitionRelationship.hxx".}
proc writeStep*(this: RWStepReprRWPropertyDefinitionRelationship;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprPropertyDefinitionRelationship]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWPropertyDefinitionRelationship.hxx".}
proc share*(this: RWStepReprRWPropertyDefinitionRelationship;
           ent: Handle[StepReprPropertyDefinitionRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWPropertyDefinitionRelationship.hxx".}

























