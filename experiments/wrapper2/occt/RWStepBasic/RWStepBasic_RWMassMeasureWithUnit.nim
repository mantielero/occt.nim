##  Created on: 2004-02-11
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_MassMeasureWithUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWMassMeasureWithUnit* {.importcpp: "RWStepBasic_RWMassMeasureWithUnit", header: "RWStepBasic_RWMassMeasureWithUnit.hxx",
                                      bycopy.} = object


proc constructRWStepBasic_RWMassMeasureWithUnit*(): RWStepBasic_RWMassMeasureWithUnit {.
    constructor, importcpp: "RWStepBasic_RWMassMeasureWithUnit(@)",
    header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc ReadStep*(this: RWStepBasic_RWMassMeasureWithUnit;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_MassMeasureWithUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc WriteStep*(this: RWStepBasic_RWMassMeasureWithUnit;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_MassMeasureWithUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc Share*(this: RWStepBasic_RWMassMeasureWithUnit;
           ent: handle[StepBasic_MassMeasureWithUnit];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}