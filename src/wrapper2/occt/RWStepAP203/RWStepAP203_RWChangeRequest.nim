##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepAP203_ChangeRequest"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP203RWChangeRequest* {.importcpp: "RWStepAP203_RWChangeRequest",
                               header: "RWStepAP203_RWChangeRequest.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructRWStepAP203RWChangeRequest*(): RWStepAP203RWChangeRequest {.
    constructor, importcpp: "RWStepAP203_RWChangeRequest(@)",
    header: "RWStepAP203_RWChangeRequest.hxx".}
proc readStep*(this: RWStepAP203RWChangeRequest;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepAP203ChangeRequest]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepAP203_RWChangeRequest.hxx".}
proc writeStep*(this: RWStepAP203RWChangeRequest; sw: var StepDataStepWriter;
               ent: Handle[StepAP203ChangeRequest]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP203_RWChangeRequest.hxx".}
proc share*(this: RWStepAP203RWChangeRequest; ent: Handle[StepAP203ChangeRequest];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP203_RWChangeRequest.hxx".}

