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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepFEA_NodeDefinition"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWNodeDefinition* {.importcpp: "RWStepFEA_RWNodeDefinition",
                               header: "RWStepFEA_RWNodeDefinition.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructRWStepFEA_RWNodeDefinition*(): RWStepFEA_RWNodeDefinition {.
    constructor, importcpp: "RWStepFEA_RWNodeDefinition(@)",
    header: "RWStepFEA_RWNodeDefinition.hxx".}
proc readStep*(this: RWStepFEA_RWNodeDefinition;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepFEA_NodeDefinition]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepFEA_RWNodeDefinition.hxx".}
proc writeStep*(this: RWStepFEA_RWNodeDefinition; sw: var StepDataStepWriter;
               ent: Handle[StepFEA_NodeDefinition]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepFEA_RWNodeDefinition.hxx".}
proc share*(this: RWStepFEA_RWNodeDefinition; ent: Handle[StepFEA_NodeDefinition];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWNodeDefinition.hxx".}

























