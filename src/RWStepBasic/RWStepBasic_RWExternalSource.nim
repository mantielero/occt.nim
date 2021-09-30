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
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWExternalSource* {.importcpp: "RWStepBasic_RWExternalSource",
                                header: "RWStepBasic_RWExternalSource.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructRWStepBasicRWExternalSource*(): RWStepBasicRWExternalSource {.
    constructor, importcpp: "RWStepBasic_RWExternalSource(@)",
    header: "RWStepBasic_RWExternalSource.hxx".}
proc readStep*(this: RWStepBasicRWExternalSource;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepBasicExternalSource]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepBasic_RWExternalSource.hxx".}
proc writeStep*(this: RWStepBasicRWExternalSource; sw: var StepDataStepWriter;
               ent: Handle[StepBasicExternalSource]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWExternalSource.hxx".}
proc share*(this: RWStepBasicRWExternalSource;
           ent: Handle[StepBasicExternalSource]; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "Share", header: "RWStepBasic_RWExternalSource.hxx".}

























