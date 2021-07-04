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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepGeom_ToroidalSurface"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
type
  RWStepGeom_RWToroidalSurface* {.importcpp: "RWStepGeom_RWToroidalSurface",
                                 header: "RWStepGeom_RWToroidalSurface.hxx",
                                 bycopy.} = object


proc constructRWStepGeom_RWToroidalSurface*(): RWStepGeom_RWToroidalSurface {.
    constructor, importcpp: "RWStepGeom_RWToroidalSurface(@)",
    header: "RWStepGeom_RWToroidalSurface.hxx".}
proc ReadStep*(this: RWStepGeom_RWToroidalSurface;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepGeom_ToroidalSurface]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepGeom_RWToroidalSurface.hxx".}
proc WriteStep*(this: RWStepGeom_RWToroidalSurface; SW: var StepData_StepWriter;
               ent: handle[StepGeom_ToroidalSurface]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepGeom_RWToroidalSurface.hxx".}
proc Share*(this: RWStepGeom_RWToroidalSurface;
           ent: handle[StepGeom_ToroidalSurface];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepGeom_RWToroidalSurface.hxx".}
proc Check*(this: RWStepGeom_RWToroidalSurface;
           ent: handle[StepGeom_ToroidalSurface]; shares: Interface_ShareTool;
           ach: var handle[Interface_Check]) {.noSideEffect, importcpp: "Check",
    header: "RWStepGeom_RWToroidalSurface.hxx".}