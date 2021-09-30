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

discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepFEA_CurveElementInterval"
discard "forward decl of StepFEA_CurveElementInterval"
type
  HandleC1C1* = Handle[StepFEA_CurveElementInterval]

## ! Representation of STEP entity CurveElementInterval

type
  StepFEA_CurveElementInterval* {.importcpp: "StepFEA_CurveElementInterval",
                                 header: "StepFEA_CurveElementInterval.hxx",
                                 bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepFEA_CurveElementInterval*(): StepFEA_CurveElementInterval {.
    constructor, importcpp: "StepFEA_CurveElementInterval(@)",
    header: "StepFEA_CurveElementInterval.hxx".}
proc init*(this: var StepFEA_CurveElementInterval;
          aFinishPosition: Handle[StepFEA_CurveElementLocation];
          aEuAngles: Handle[StepBasicEulerAngles]) {.importcpp: "Init",
    header: "StepFEA_CurveElementInterval.hxx".}
proc finishPosition*(this: StepFEA_CurveElementInterval): Handle[
    StepFEA_CurveElementLocation] {.noSideEffect, importcpp: "FinishPosition",
                                   header: "StepFEA_CurveElementInterval.hxx".}
proc setFinishPosition*(this: var StepFEA_CurveElementInterval;
                       finishPosition: Handle[StepFEA_CurveElementLocation]) {.
    importcpp: "SetFinishPosition", header: "StepFEA_CurveElementInterval.hxx".}
proc euAngles*(this: StepFEA_CurveElementInterval): Handle[StepBasicEulerAngles] {.
    noSideEffect, importcpp: "EuAngles", header: "StepFEA_CurveElementInterval.hxx".}
proc setEuAngles*(this: var StepFEA_CurveElementInterval;
                 euAngles: Handle[StepBasicEulerAngles]) {.
    importcpp: "SetEuAngles", header: "StepFEA_CurveElementInterval.hxx".}
type
  StepFEA_CurveElementIntervalbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_CurveElementInterval::get_type_name(@)",
                            header: "StepFEA_CurveElementInterval.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_CurveElementInterval::get_type_descriptor(@)",
    header: "StepFEA_CurveElementInterval.hxx".}
proc dynamicType*(this: StepFEA_CurveElementInterval): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementInterval.hxx".}

























