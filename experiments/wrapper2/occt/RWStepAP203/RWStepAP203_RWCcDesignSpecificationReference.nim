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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepAP203_CcDesignSpecificationReference"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP203_RWCcDesignSpecificationReference* {.
      importcpp: "RWStepAP203_RWCcDesignSpecificationReference",
      header: "RWStepAP203_RWCcDesignSpecificationReference.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructRWStepAP203_RWCcDesignSpecificationReference*(): RWStepAP203_RWCcDesignSpecificationReference {.
    constructor, importcpp: "RWStepAP203_RWCcDesignSpecificationReference(@)",
    header: "RWStepAP203_RWCcDesignSpecificationReference.hxx".}
proc ReadStep*(this: RWStepAP203_RWCcDesignSpecificationReference;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP203_CcDesignSpecificationReference]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP203_RWCcDesignSpecificationReference.hxx".}
proc WriteStep*(this: RWStepAP203_RWCcDesignSpecificationReference;
               SW: var StepData_StepWriter;
               ent: handle[StepAP203_CcDesignSpecificationReference]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP203_RWCcDesignSpecificationReference.hxx".}
proc Share*(this: RWStepAP203_RWCcDesignSpecificationReference;
           ent: handle[StepAP203_CcDesignSpecificationReference];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP203_RWCcDesignSpecificationReference.hxx".}