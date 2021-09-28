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

discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepBasic_ActionRequestSolution"
discard "forward decl of StepBasic_ActionRequestSolution"
type
  HandleC1C1* = Handle[StepBasicActionRequestSolution]

## ! Representation of STEP entity ActionRequestSolution

type
  StepBasicActionRequestSolution* {.importcpp: "StepBasic_ActionRequestSolution", header: "StepBasic_ActionRequestSolution.hxx",
                                   bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicActionRequestSolution*(): StepBasicActionRequestSolution {.
    constructor, importcpp: "StepBasic_ActionRequestSolution(@)",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc init*(this: var StepBasicActionRequestSolution;
          aMethod: Handle[StepBasicActionMethod];
          aRequest: Handle[StepBasicVersionedActionRequest]) {.importcpp: "Init",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc `method`*(this: StepBasicActionRequestSolution): Handle[StepBasicActionMethod] {.
    noSideEffect, importcpp: "Method",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc setMethod*(this: var StepBasicActionRequestSolution;
               `method`: Handle[StepBasicActionMethod]) {.importcpp: "SetMethod",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc request*(this: StepBasicActionRequestSolution): Handle[
    StepBasicVersionedActionRequest] {.noSideEffect, importcpp: "Request", header: "StepBasic_ActionRequestSolution.hxx".}
proc setRequest*(this: var StepBasicActionRequestSolution;
                request: Handle[StepBasicVersionedActionRequest]) {.
    importcpp: "SetRequest", header: "StepBasic_ActionRequestSolution.hxx".}
type
  StepBasicActionRequestSolutionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ActionRequestSolution::get_type_name(@)",
                            header: "StepBasic_ActionRequestSolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ActionRequestSolution::get_type_descriptor(@)",
    header: "StepBasic_ActionRequestSolution.hxx".}
proc dynamicType*(this: StepBasicActionRequestSolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ActionRequestSolution.hxx".}

























