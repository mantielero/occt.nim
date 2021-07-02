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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWDocument* {.importcpp: "RWStepBasic_RWDocument",
                          header: "RWStepBasic_RWDocument.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructRWStepBasicRWDocument*(): RWStepBasicRWDocument {.constructor,
    importcpp: "RWStepBasic_RWDocument(@)", header: "RWStepBasic_RWDocument.hxx".}
proc readStep*(this: RWStepBasicRWDocument; data: Handle[StepDataStepReaderData];
              num: StandardInteger; ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicDocument]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWDocument.hxx".}
proc writeStep*(this: RWStepBasicRWDocument; sw: var StepDataStepWriter;
               ent: Handle[StepBasicDocument]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWDocument.hxx".}
proc share*(this: RWStepBasicRWDocument; ent: Handle[StepBasicDocument];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWDocument.hxx".}

