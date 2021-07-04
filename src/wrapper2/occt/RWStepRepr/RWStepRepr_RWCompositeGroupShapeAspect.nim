##  Created on: 2015-06-29
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_CompositeGroupShapeAspect"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepRepr_RWCompositeGroupShapeAspect* {.
      importcpp: "RWStepRepr_RWCompositeGroupShapeAspect",
      header: "RWStepRepr_RWCompositeGroupShapeAspect.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor


proc constructRWStepRepr_RWCompositeGroupShapeAspect*(): RWStepRepr_RWCompositeGroupShapeAspect {.
    constructor, importcpp: "RWStepRepr_RWCompositeGroupShapeAspect(@)",
    header: "RWStepRepr_RWCompositeGroupShapeAspect.hxx".}
proc ReadStep*(this: RWStepRepr_RWCompositeGroupShapeAspect;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_CompositeGroupShapeAspect]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWCompositeGroupShapeAspect.hxx".}
proc WriteStep*(this: RWStepRepr_RWCompositeGroupShapeAspect;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_CompositeGroupShapeAspect]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWCompositeGroupShapeAspect.hxx".}
proc Share*(this: RWStepRepr_RWCompositeGroupShapeAspect;
           ent: handle[StepRepr_CompositeGroupShapeAspect];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWCompositeGroupShapeAspect.hxx".}