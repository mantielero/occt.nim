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
discard "forward decl of StepShape_DimensionalSizeWithPath"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWDimensionalSizeWithPath* {.
      importcpp: "RWStepShape_RWDimensionalSizeWithPath",
      header: "RWStepShape_RWDimensionalSizeWithPath.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor


proc constructRWStepShapeRWDimensionalSizeWithPath*(): RWStepShapeRWDimensionalSizeWithPath {.
    constructor, importcpp: "RWStepShape_RWDimensionalSizeWithPath(@)",
    header: "RWStepShape_RWDimensionalSizeWithPath.hxx".}
proc readStep*(this: RWStepShapeRWDimensionalSizeWithPath;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeDimensionalSizeWithPath]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWDimensionalSizeWithPath.hxx".}
proc writeStep*(this: RWStepShapeRWDimensionalSizeWithPath;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeDimensionalSizeWithPath]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWDimensionalSizeWithPath.hxx".}
proc share*(this: RWStepShapeRWDimensionalSizeWithPath;
           ent: Handle[StepShapeDimensionalSizeWithPath];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWDimensionalSizeWithPath.hxx".}

























