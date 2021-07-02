##  Created on: 2000-04-18
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
discard "forward decl of StepShape_DimensionalCharacteristicRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWDimensionalCharacteristicRepresentation* {.
      importcpp: "RWStepShape_RWDimensionalCharacteristicRepresentation",
      header: "RWStepShape_RWDimensionalCharacteristicRepresentation.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructRWStepShapeRWDimensionalCharacteristicRepresentation*(): RWStepShapeRWDimensionalCharacteristicRepresentation {.
    constructor,
    importcpp: "RWStepShape_RWDimensionalCharacteristicRepresentation(@)",
    header: "RWStepShape_RWDimensionalCharacteristicRepresentation.hxx".}
proc readStep*(this: RWStepShapeRWDimensionalCharacteristicRepresentation;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeDimensionalCharacteristicRepresentation]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepShape_RWDimensionalCharacteristicRepresentation.hxx".}
proc writeStep*(this: RWStepShapeRWDimensionalCharacteristicRepresentation;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeDimensionalCharacteristicRepresentation]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepShape_RWDimensionalCharacteristicRepresentation.hxx".}
proc share*(this: RWStepShapeRWDimensionalCharacteristicRepresentation;
           ent: Handle[StepShapeDimensionalCharacteristicRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWDimensionalCharacteristicRepresentation.hxx".}

