##  Created on: 2000-07-11
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_DefinitionalRepresentationAndShapeRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWDefinitionalRepresentationAndShapeRepresentation* {.importcpp: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation", header: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx",
      bycopy.} = object


proc constructRWStepShapeRWDefinitionalRepresentationAndShapeRepresentation*(): RWStepShapeRWDefinitionalRepresentationAndShapeRepresentation {.
    constructor, importcpp: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation(@)", header: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx".}
proc readStep*(this: RWStepShapeRWDefinitionalRepresentationAndShapeRepresentation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[
    StepShapeDefinitionalRepresentationAndShapeRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx".}
proc writeStep*(this: RWStepShapeRWDefinitionalRepresentationAndShapeRepresentation;
               sw: var StepDataStepWriter; ent: Handle[
    StepShapeDefinitionalRepresentationAndShapeRepresentation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx".}
proc share*(this: RWStepShapeRWDefinitionalRepresentationAndShapeRepresentation;
    ent: Handle[StepShapeDefinitionalRepresentationAndShapeRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share", header: "RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx".}

























