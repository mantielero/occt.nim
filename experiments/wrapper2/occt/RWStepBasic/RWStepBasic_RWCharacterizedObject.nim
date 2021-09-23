##  Created on: 2000-05-11
##  Created by: data exchange team
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
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasic_RWCharacterizedObject* {.importcpp: "RWStepBasic_RWCharacterizedObject", header: "RWStepBasic_RWCharacterizedObject.hxx",
                                      bycopy.} = object ## ! Empty constructor


proc constructRWStepBasic_RWCharacterizedObject*(): RWStepBasic_RWCharacterizedObject {.
    constructor, importcpp: "RWStepBasic_RWCharacterizedObject(@)",
    header: "RWStepBasic_RWCharacterizedObject.hxx".}
proc ReadStep*(this: RWStepBasic_RWCharacterizedObject;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepBasic_CharacterizedObject]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWCharacterizedObject.hxx".}
proc WriteStep*(this: RWStepBasic_RWCharacterizedObject;
               SW: var StepData_StepWriter;
               ent: handle[StepBasic_CharacterizedObject]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWCharacterizedObject.hxx".}
proc Share*(this: RWStepBasic_RWCharacterizedObject;
           ent: handle[StepBasic_CharacterizedObject];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWCharacterizedObject.hxx".}