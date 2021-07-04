##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShape_RWFacetedBrepAndBrepWithVoids* {.
      importcpp: "RWStepShape_RWFacetedBrepAndBrepWithVoids",
      header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx", bycopy.} = object


proc constructRWStepShape_RWFacetedBrepAndBrepWithVoids*(): RWStepShape_RWFacetedBrepAndBrepWithVoids {.
    constructor, importcpp: "RWStepShape_RWFacetedBrepAndBrepWithVoids(@)",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc ReadStep*(this: RWStepShape_RWFacetedBrepAndBrepWithVoids;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepShape_FacetedBrepAndBrepWithVoids]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc WriteStep*(this: RWStepShape_RWFacetedBrepAndBrepWithVoids;
               SW: var StepData_StepWriter;
               ent: handle[StepShape_FacetedBrepAndBrepWithVoids]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc Share*(this: RWStepShape_RWFacetedBrepAndBrepWithVoids;
           ent: handle[StepShape_FacetedBrepAndBrepWithVoids];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}