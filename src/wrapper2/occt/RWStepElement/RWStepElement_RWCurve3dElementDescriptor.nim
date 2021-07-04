##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepElement_Curve3dElementDescriptor"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepElement_RWCurve3dElementDescriptor* {.
      importcpp: "RWStepElement_RWCurve3dElementDescriptor",
      header: "RWStepElement_RWCurve3dElementDescriptor.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepElement_RWCurve3dElementDescriptor*(): RWStepElement_RWCurve3dElementDescriptor {.
    constructor, importcpp: "RWStepElement_RWCurve3dElementDescriptor(@)",
    header: "RWStepElement_RWCurve3dElementDescriptor.hxx".}
proc ReadStep*(this: RWStepElement_RWCurve3dElementDescriptor;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepElement_Curve3dElementDescriptor]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepElement_RWCurve3dElementDescriptor.hxx".}
proc WriteStep*(this: RWStepElement_RWCurve3dElementDescriptor;
               SW: var StepData_StepWriter;
               ent: handle[StepElement_Curve3dElementDescriptor]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepElement_RWCurve3dElementDescriptor.hxx".}
proc Share*(this: RWStepElement_RWCurve3dElementDescriptor;
           ent: handle[StepElement_Curve3dElementDescriptor];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepElement_RWCurve3dElementDescriptor.hxx".}