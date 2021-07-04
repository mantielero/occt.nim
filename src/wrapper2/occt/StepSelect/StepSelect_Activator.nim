##  Created on: 1995-04-20
##  Created by: Christian CAILLET
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Activator,
  ../IFSelect/IFSelect_ReturnStatus, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of StepSelect_Activator"
discard "forward decl of StepSelect_Activator"
type
  Handle_StepSelect_Activator* = handle[StepSelect_Activator]

## ! Performs Actions specific to StepSelect, i.e. creation of
## ! Step Selections and Counters, plus dumping specific to Step

type
  StepSelect_Activator* {.importcpp: "StepSelect_Activator",
                         header: "StepSelect_Activator.hxx", bycopy.} = object of IFSelect_Activator


proc constructStepSelect_Activator*(): StepSelect_Activator {.constructor,
    importcpp: "StepSelect_Activator(@)", header: "StepSelect_Activator.hxx".}
proc Do*(this: var StepSelect_Activator; number: Standard_Integer;
        pilot: handle[IFSelect_SessionPilot]): IFSelect_ReturnStatus {.
    importcpp: "Do", header: "StepSelect_Activator.hxx".}
proc Help*(this: StepSelect_Activator; number: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Help", header: "StepSelect_Activator.hxx".}
type
  StepSelect_Activatorbase_type* = IFSelect_Activator

proc get_type_name*(): cstring {.importcpp: "StepSelect_Activator::get_type_name(@)",
                              header: "StepSelect_Activator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepSelect_Activator::get_type_descriptor(@)",
    header: "StepSelect_Activator.hxx".}
proc DynamicType*(this: StepSelect_Activator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_Activator.hxx".}