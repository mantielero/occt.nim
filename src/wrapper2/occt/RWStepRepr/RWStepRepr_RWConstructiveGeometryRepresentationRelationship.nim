##  Created on: 2016-04-26
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_ConstructiveGeometryRepresentationRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWConstructiveGeometryRepresentationRelationship* {.
      importcpp: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship", header: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship.hxx",
      bycopy.} = object


proc constructRWStepReprRWConstructiveGeometryRepresentationRelationship*(): RWStepReprRWConstructiveGeometryRepresentationRelationship {.
    constructor, importcpp: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship(@)",
    header: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship.hxx".}
proc readStep*(this: RWStepReprRWConstructiveGeometryRepresentationRelationship;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepReprConstructiveGeometryRepresentationRelationship]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship.hxx".}
proc writeStep*(this: RWStepReprRWConstructiveGeometryRepresentationRelationship;
               sw: var StepDataStepWriter; ent: Handle[
    StepReprConstructiveGeometryRepresentationRelationship]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship.hxx".}
proc share*(this: RWStepReprRWConstructiveGeometryRepresentationRelationship;
           ent: Handle[StepReprConstructiveGeometryRepresentationRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWConstructiveGeometryRepresentationRelationship.hxx".}

