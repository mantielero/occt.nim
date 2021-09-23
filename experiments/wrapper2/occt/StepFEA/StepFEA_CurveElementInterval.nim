##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepFEA_CurveElementInterval"
discard "forward decl of StepFEA_CurveElementInterval"
type
  Handle_StepFEA_CurveElementInterval* = handle[StepFEA_CurveElementInterval]

## ! Representation of STEP entity CurveElementInterval

type
  StepFEA_CurveElementInterval* {.importcpp: "StepFEA_CurveElementInterval",
                                 header: "StepFEA_CurveElementInterval.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepFEA_CurveElementInterval*(): StepFEA_CurveElementInterval {.
    constructor, importcpp: "StepFEA_CurveElementInterval(@)",
    header: "StepFEA_CurveElementInterval.hxx".}
proc Init*(this: var StepFEA_CurveElementInterval;
          aFinishPosition: handle[StepFEA_CurveElementLocation];
          aEuAngles: handle[StepBasic_EulerAngles]) {.importcpp: "Init",
    header: "StepFEA_CurveElementInterval.hxx".}
proc FinishPosition*(this: StepFEA_CurveElementInterval): handle[
    StepFEA_CurveElementLocation] {.noSideEffect, importcpp: "FinishPosition",
                                   header: "StepFEA_CurveElementInterval.hxx".}
proc SetFinishPosition*(this: var StepFEA_CurveElementInterval;
                       FinishPosition: handle[StepFEA_CurveElementLocation]) {.
    importcpp: "SetFinishPosition", header: "StepFEA_CurveElementInterval.hxx".}
proc EuAngles*(this: StepFEA_CurveElementInterval): handle[StepBasic_EulerAngles] {.
    noSideEffect, importcpp: "EuAngles", header: "StepFEA_CurveElementInterval.hxx".}
proc SetEuAngles*(this: var StepFEA_CurveElementInterval;
                 EuAngles: handle[StepBasic_EulerAngles]) {.
    importcpp: "SetEuAngles", header: "StepFEA_CurveElementInterval.hxx".}
type
  StepFEA_CurveElementIntervalbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_CurveElementInterval::get_type_name(@)",
                              header: "StepFEA_CurveElementInterval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_CurveElementInterval::get_type_descriptor(@)",
    header: "StepFEA_CurveElementInterval.hxx".}
proc DynamicType*(this: StepFEA_CurveElementInterval): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementInterval.hxx".}