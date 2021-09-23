##  Created on: 2002-12-14
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
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_DegreeOfFreedom,
  ../StepElement/StepElement_MeasureOrUnspecifiedValue,
  ../Standard/Standard_Transient

discard "forward decl of StepFEA_DegreeOfFreedom"
discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepFEA_FreedomAndCoefficient"
discard "forward decl of StepFEA_FreedomAndCoefficient"
type
  Handle_StepFEA_FreedomAndCoefficient* = handle[StepFEA_FreedomAndCoefficient]

## ! Representation of STEP entity FreedomAndCoefficient

type
  StepFEA_FreedomAndCoefficient* {.importcpp: "StepFEA_FreedomAndCoefficient",
                                  header: "StepFEA_FreedomAndCoefficient.hxx",
                                  bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepFEA_FreedomAndCoefficient*(): StepFEA_FreedomAndCoefficient {.
    constructor, importcpp: "StepFEA_FreedomAndCoefficient(@)",
    header: "StepFEA_FreedomAndCoefficient.hxx".}
proc Init*(this: var StepFEA_FreedomAndCoefficient;
          aFreedom: StepFEA_DegreeOfFreedom;
          aA: StepElement_MeasureOrUnspecifiedValue) {.importcpp: "Init",
    header: "StepFEA_FreedomAndCoefficient.hxx".}
proc Freedom*(this: StepFEA_FreedomAndCoefficient): StepFEA_DegreeOfFreedom {.
    noSideEffect, importcpp: "Freedom", header: "StepFEA_FreedomAndCoefficient.hxx".}
proc SetFreedom*(this: var StepFEA_FreedomAndCoefficient;
                Freedom: StepFEA_DegreeOfFreedom) {.importcpp: "SetFreedom",
    header: "StepFEA_FreedomAndCoefficient.hxx".}
proc A*(this: StepFEA_FreedomAndCoefficient): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "A", header: "StepFEA_FreedomAndCoefficient.hxx".}
proc SetA*(this: var StepFEA_FreedomAndCoefficient;
          A: StepElement_MeasureOrUnspecifiedValue) {.importcpp: "SetA",
    header: "StepFEA_FreedomAndCoefficient.hxx".}
type
  StepFEA_FreedomAndCoefficientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_FreedomAndCoefficient::get_type_name(@)",
                              header: "StepFEA_FreedomAndCoefficient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FreedomAndCoefficient::get_type_descriptor(@)",
    header: "StepFEA_FreedomAndCoefficient.hxx".}
proc DynamicType*(this: StepFEA_FreedomAndCoefficient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FreedomAndCoefficient.hxx".}