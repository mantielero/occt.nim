##  Created on: 2015-09-03
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_IntegerRepresentationItem"
discard "forward decl of StepData_StepWriter"
type
  RWStepRepr_RWIntegerRepresentationItem* {.
      importcpp: "RWStepRepr_RWIntegerRepresentationItem",
      header: "RWStepRepr_RWIntegerRepresentationItem.hxx", bycopy.} = object


proc constructRWStepRepr_RWIntegerRepresentationItem*(): RWStepRepr_RWIntegerRepresentationItem {.
    constructor, importcpp: "RWStepRepr_RWIntegerRepresentationItem(@)",
    header: "RWStepRepr_RWIntegerRepresentationItem.hxx".}
proc ReadStep*(this: RWStepRepr_RWIntegerRepresentationItem;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepRepr_IntegerRepresentationItem]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWIntegerRepresentationItem.hxx".}
proc WriteStep*(this: RWStepRepr_RWIntegerRepresentationItem;
               SW: var StepData_StepWriter;
               ent: handle[StepRepr_IntegerRepresentationItem]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWIntegerRepresentationItem.hxx".}