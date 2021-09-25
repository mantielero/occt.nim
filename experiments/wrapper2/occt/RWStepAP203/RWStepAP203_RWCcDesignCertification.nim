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
discard "forward decl of StepAP203_CcDesignCertification"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP203RWCcDesignCertification* {.importcpp: "RWStepAP203_RWCcDesignCertification", header: "RWStepAP203_RWCcDesignCertification.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepAP203RWCcDesignCertification*(): RWStepAP203RWCcDesignCertification {.
    constructor, importcpp: "RWStepAP203_RWCcDesignCertification(@)",
    header: "RWStepAP203_RWCcDesignCertification.hxx".}
proc readStep*(this: RWStepAP203RWCcDesignCertification;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP203CcDesignCertification]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP203_RWCcDesignCertification.hxx".}
proc writeStep*(this: RWStepAP203RWCcDesignCertification;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP203CcDesignCertification]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP203_RWCcDesignCertification.hxx".}
proc share*(this: RWStepAP203RWCcDesignCertification;
           ent: Handle[StepAP203CcDesignCertification];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP203_RWCcDesignCertification.hxx".}
