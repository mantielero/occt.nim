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
discard "forward decl of StepBasic_SolidAngleMeasureWithUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWSolidAngleMeasureWithUnit* {.
      importcpp: "RWStepBasic_RWSolidAngleMeasureWithUnit",
      header: "RWStepBasic_RWSolidAngleMeasureWithUnit.hxx", bycopy.} = object


proc constructRWStepBasic_RWSolidAngleMeasureWithUnit*(): RWStepBasic_RWSolidAngleMeasureWithUnit {.
    constructor, importcpp: "RWStepBasic_RWSolidAngleMeasureWithUnit(@)",
    header: "RWStepBasic_RWSolidAngleMeasureWithUnit.hxx".}
proc ReadStep*(this: RWStepBasic_RWSolidAngleMeasureWithUnit;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_SolidAngleMeasureWithUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWSolidAngleMeasureWithUnit.hxx".}
proc WriteStep*(this: RWStepBasic_RWSolidAngleMeasureWithUnit;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_SolidAngleMeasureWithUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSolidAngleMeasureWithUnit.hxx".}
proc Share*(this: RWStepBasic_RWSolidAngleMeasureWithUnit;
           ent: handle[StepBasic_SolidAngleMeasureWithUnit];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWSolidAngleMeasureWithUnit.hxx".}