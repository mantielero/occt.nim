##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepShape_LoopAndPath"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWLoopAndPath* {.importcpp: "RWStepShape_RWLoopAndPath",
                             header: "RWStepShape_RWLoopAndPath.hxx", bycopy.} = object


proc constructRWStepShapeRWLoopAndPath*(): RWStepShapeRWLoopAndPath {.constructor,
    importcpp: "RWStepShape_RWLoopAndPath(@)",
    header: "RWStepShape_RWLoopAndPath.hxx".}
proc readStep*(this: RWStepShapeRWLoopAndPath;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepShapeLoopAndPath]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepShape_RWLoopAndPath.hxx".}
proc writeStep*(this: RWStepShapeRWLoopAndPath; sw: var StepDataStepWriter;
               ent: Handle[StepShapeLoopAndPath]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWLoopAndPath.hxx".}
proc share*(this: RWStepShapeRWLoopAndPath; ent: Handle[StepShapeLoopAndPath];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWLoopAndPath.hxx".}

























