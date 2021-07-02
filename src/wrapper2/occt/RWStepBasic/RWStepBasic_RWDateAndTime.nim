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
discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWDateAndTime* {.importcpp: "RWStepBasic_RWDateAndTime",
                             header: "RWStepBasic_RWDateAndTime.hxx", bycopy.} = object


proc constructRWStepBasicRWDateAndTime*(): RWStepBasicRWDateAndTime {.constructor,
    importcpp: "RWStepBasic_RWDateAndTime(@)",
    header: "RWStepBasic_RWDateAndTime.hxx".}
proc readStep*(this: RWStepBasicRWDateAndTime;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepBasicDateAndTime]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepBasic_RWDateAndTime.hxx".}
proc writeStep*(this: RWStepBasicRWDateAndTime; sw: var StepDataStepWriter;
               ent: Handle[StepBasicDateAndTime]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWDateAndTime.hxx".}
proc share*(this: RWStepBasicRWDateAndTime; ent: Handle[StepBasicDateAndTime];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWDateAndTime.hxx".}

