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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepBasic_ActionRequestSolution"
discard "forward decl of StepBasic_ActionRequestSolution"
type
  Handle_StepBasic_ActionRequestSolution* = handle[StepBasic_ActionRequestSolution]

## ! Representation of STEP entity ActionRequestSolution

type
  StepBasic_ActionRequestSolution* {.importcpp: "StepBasic_ActionRequestSolution", header: "StepBasic_ActionRequestSolution.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Empty
                                                                       ## constructor


proc constructStepBasic_ActionRequestSolution*(): StepBasic_ActionRequestSolution {.
    constructor, importcpp: "StepBasic_ActionRequestSolution(@)",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc Init*(this: var StepBasic_ActionRequestSolution;
          aMethod: handle[StepBasic_ActionMethod];
          aRequest: handle[StepBasic_VersionedActionRequest]) {.importcpp: "Init",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc Method*(this: StepBasic_ActionRequestSolution): handle[StepBasic_ActionMethod] {.
    noSideEffect, importcpp: "Method",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc SetMethod*(this: var StepBasic_ActionRequestSolution;
               Method: handle[StepBasic_ActionMethod]) {.importcpp: "SetMethod",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc Request*(this: StepBasic_ActionRequestSolution): handle[
    StepBasic_VersionedActionRequest] {.noSideEffect, importcpp: "Request", header: "StepBasic_ActionRequestSolution.hxx".}
proc SetRequest*(this: var StepBasic_ActionRequestSolution;
                Request: handle[StepBasic_VersionedActionRequest]) {.
    importcpp: "SetRequest", header: "StepBasic_ActionRequestSolution.hxx".}
type
  StepBasic_ActionRequestSolutionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ActionRequestSolution::get_type_name(@)",
                              header: "StepBasic_ActionRequestSolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ActionRequestSolution::get_type_descriptor(@)",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc DynamicType*(this: StepBasic_ActionRequestSolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ActionRequestSolution.hxx".}