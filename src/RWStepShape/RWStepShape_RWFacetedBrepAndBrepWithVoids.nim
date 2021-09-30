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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWFacetedBrepAndBrepWithVoids* {.
      importcpp: "RWStepShape_RWFacetedBrepAndBrepWithVoids",
      header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx", bycopy.} = object


proc constructRWStepShapeRWFacetedBrepAndBrepWithVoids*(): RWStepShapeRWFacetedBrepAndBrepWithVoids {.
    constructor, importcpp: "RWStepShape_RWFacetedBrepAndBrepWithVoids(@)",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc readStep*(this: RWStepShapeRWFacetedBrepAndBrepWithVoids;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeFacetedBrepAndBrepWithVoids]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc writeStep*(this: RWStepShapeRWFacetedBrepAndBrepWithVoids;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeFacetedBrepAndBrepWithVoids]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}
proc share*(this: RWStepShapeRWFacetedBrepAndBrepWithVoids;
           ent: Handle[StepShapeFacetedBrepAndBrepWithVoids];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx".}

























