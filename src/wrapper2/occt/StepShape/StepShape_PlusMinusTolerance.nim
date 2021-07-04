##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_ToleranceMethodDefinition, StepShape_DimensionalCharacteristic,
  ../Standard/Standard_Transient

discard "forward decl of StepShape_ToleranceMethodDefinition"
discard "forward decl of StepShape_DimensionalCharacteristic"
discard "forward decl of StepShape_PlusMinusTolerance"
discard "forward decl of StepShape_PlusMinusTolerance"
type
  Handle_StepShape_PlusMinusTolerance* = handle[StepShape_PlusMinusTolerance]

## ! Added for Dimensional Tolerances

type
  StepShape_PlusMinusTolerance* {.importcpp: "StepShape_PlusMinusTolerance",
                                 header: "StepShape_PlusMinusTolerance.hxx",
                                 bycopy.} = object of Standard_Transient


proc constructStepShape_PlusMinusTolerance*(): StepShape_PlusMinusTolerance {.
    constructor, importcpp: "StepShape_PlusMinusTolerance(@)",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc Init*(this: var StepShape_PlusMinusTolerance;
          range: StepShape_ToleranceMethodDefinition;
          toleranced_dimension: StepShape_DimensionalCharacteristic) {.
    importcpp: "Init", header: "StepShape_PlusMinusTolerance.hxx".}
proc Range*(this: StepShape_PlusMinusTolerance): StepShape_ToleranceMethodDefinition {.
    noSideEffect, importcpp: "Range", header: "StepShape_PlusMinusTolerance.hxx".}
proc SetRange*(this: var StepShape_PlusMinusTolerance;
              range: StepShape_ToleranceMethodDefinition) {.importcpp: "SetRange",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc TolerancedDimension*(this: StepShape_PlusMinusTolerance): StepShape_DimensionalCharacteristic {.
    noSideEffect, importcpp: "TolerancedDimension",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc SetTolerancedDimension*(this: var StepShape_PlusMinusTolerance;
    toleranced_dimension: StepShape_DimensionalCharacteristic) {.
    importcpp: "SetTolerancedDimension",
    header: "StepShape_PlusMinusTolerance.hxx".}
type
  StepShape_PlusMinusTolerancebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_PlusMinusTolerance::get_type_name(@)",
                              header: "StepShape_PlusMinusTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_PlusMinusTolerance::get_type_descriptor(@)",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc DynamicType*(this: StepShape_PlusMinusTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_PlusMinusTolerance.hxx".}