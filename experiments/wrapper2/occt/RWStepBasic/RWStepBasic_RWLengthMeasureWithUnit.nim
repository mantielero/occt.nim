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
discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWLengthMeasureWithUnit* {.importcpp: "RWStepBasic_RWLengthMeasureWithUnit", header: "RWStepBasic_RWLengthMeasureWithUnit.hxx",
                                       bycopy.} = object


proc constructRWStepBasicRWLengthMeasureWithUnit*(): RWStepBasicRWLengthMeasureWithUnit {.
    constructor, importcpp: "RWStepBasic_RWLengthMeasureWithUnit(@)",
    header: "RWStepBasic_RWLengthMeasureWithUnit.hxx".}
proc readStep*(this: RWStepBasicRWLengthMeasureWithUnit;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicLengthMeasureWithUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWLengthMeasureWithUnit.hxx".}
proc writeStep*(this: RWStepBasicRWLengthMeasureWithUnit;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicLengthMeasureWithUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWLengthMeasureWithUnit.hxx".}
proc share*(this: RWStepBasicRWLengthMeasureWithUnit;
           ent: Handle[StepBasicLengthMeasureWithUnit];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWLengthMeasureWithUnit.hxx".}
