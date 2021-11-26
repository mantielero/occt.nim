##  Created on: 1998-07-24
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWMaterialDesignation* {.importcpp: "RWStepRepr_RWMaterialDesignation", header: "RWStepRepr_RWMaterialDesignation.hxx",
                                    bycopy.} = object


proc constructRWStepReprRWMaterialDesignation*(): RWStepReprRWMaterialDesignation {.
    constructor, importcpp: "RWStepRepr_RWMaterialDesignation(@)",
    header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc readStep*(this: RWStepReprRWMaterialDesignation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprMaterialDesignation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc writeStep*(this: RWStepReprRWMaterialDesignation; sw: var StepDataStepWriter;
               ent: Handle[StepReprMaterialDesignation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWMaterialDesignation.hxx".}
proc share*(this: RWStepReprRWMaterialDesignation;
           ent: Handle[StepReprMaterialDesignation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWMaterialDesignation.hxx".}

























