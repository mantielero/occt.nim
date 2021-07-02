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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWGeneralProperty* {.importcpp: "RWStepBasic_RWGeneralProperty",
                                 header: "RWStepBasic_RWGeneralProperty.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWGeneralProperty*(): RWStepBasicRWGeneralProperty {.
    constructor, importcpp: "RWStepBasic_RWGeneralProperty(@)",
    header: "RWStepBasic_RWGeneralProperty.hxx".}
proc readStep*(this: RWStepBasicRWGeneralProperty;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicGeneralProperty]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWGeneralProperty.hxx".}
proc writeStep*(this: RWStepBasicRWGeneralProperty; sw: var StepDataStepWriter;
               ent: Handle[StepBasicGeneralProperty]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWGeneralProperty.hxx".}
proc share*(this: RWStepBasicRWGeneralProperty;
           ent: Handle[StepBasicGeneralProperty];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWGeneralProperty.hxx".}

