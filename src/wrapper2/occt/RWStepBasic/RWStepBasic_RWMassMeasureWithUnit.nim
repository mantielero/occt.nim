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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_MassMeasureWithUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWMassMeasureWithUnit* {.importcpp: "RWStepBasic_RWMassMeasureWithUnit", header: "RWStepBasic_RWMassMeasureWithUnit.hxx",
                                     bycopy.} = object


proc constructRWStepBasicRWMassMeasureWithUnit*(): RWStepBasicRWMassMeasureWithUnit {.
    constructor, importcpp: "RWStepBasic_RWMassMeasureWithUnit(@)",
    header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc readStep*(this: RWStepBasicRWMassMeasureWithUnit;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicMassMeasureWithUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc writeStep*(this: RWStepBasicRWMassMeasureWithUnit; sw: var StepDataStepWriter;
               ent: Handle[StepBasicMassMeasureWithUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}
proc share*(this: RWStepBasicRWMassMeasureWithUnit;
           ent: Handle[StepBasicMassMeasureWithUnit];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWMassMeasureWithUnit.hxx".}

