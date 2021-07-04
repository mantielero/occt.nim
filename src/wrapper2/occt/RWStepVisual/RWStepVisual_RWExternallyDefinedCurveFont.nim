##  Created on: 2000-05-10
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepVisual_ExternallyDefinedCurveFont"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisual_RWExternallyDefinedCurveFont* {.
      importcpp: "RWStepVisual_RWExternallyDefinedCurveFont",
      header: "RWStepVisual_RWExternallyDefinedCurveFont.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructRWStepVisual_RWExternallyDefinedCurveFont*(): RWStepVisual_RWExternallyDefinedCurveFont {.
    constructor, importcpp: "RWStepVisual_RWExternallyDefinedCurveFont(@)",
    header: "RWStepVisual_RWExternallyDefinedCurveFont.hxx".}
proc ReadStep*(this: RWStepVisual_RWExternallyDefinedCurveFont;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepVisual_ExternallyDefinedCurveFont]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWExternallyDefinedCurveFont.hxx".}
proc WriteStep*(this: RWStepVisual_RWExternallyDefinedCurveFont;
               SW: var StepData_StepWriter;
               ent: handle[StepVisual_ExternallyDefinedCurveFont]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepVisual_RWExternallyDefinedCurveFont.hxx".}
proc Share*(this: RWStepVisual_RWExternallyDefinedCurveFont;
           ent: handle[StepVisual_ExternallyDefinedCurveFont];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWExternallyDefinedCurveFont.hxx".}