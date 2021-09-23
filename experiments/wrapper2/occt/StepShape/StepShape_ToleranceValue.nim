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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepShape_ToleranceValue"
discard "forward decl of StepShape_ToleranceValue"
type
  Handle_StepShape_ToleranceValue* = handle[StepShape_ToleranceValue]

## ! Added for Dimensional Tolerances

type
  StepShape_ToleranceValue* {.importcpp: "StepShape_ToleranceValue",
                             header: "StepShape_ToleranceValue.hxx", bycopy.} = object of Standard_Transient


proc constructStepShape_ToleranceValue*(): StepShape_ToleranceValue {.constructor,
    importcpp: "StepShape_ToleranceValue(@)",
    header: "StepShape_ToleranceValue.hxx".}
proc Init*(this: var StepShape_ToleranceValue;
          lower_bound: handle[Standard_Transient];
          upper_bound: handle[Standard_Transient]) {.importcpp: "Init",
    header: "StepShape_ToleranceValue.hxx".}
proc LowerBound*(this: StepShape_ToleranceValue): handle[Standard_Transient] {.
    noSideEffect, importcpp: "LowerBound", header: "StepShape_ToleranceValue.hxx".}
proc SetLowerBound*(this: var StepShape_ToleranceValue;
                   lower_bound: handle[Standard_Transient]) {.
    importcpp: "SetLowerBound", header: "StepShape_ToleranceValue.hxx".}
proc UpperBound*(this: StepShape_ToleranceValue): handle[Standard_Transient] {.
    noSideEffect, importcpp: "UpperBound", header: "StepShape_ToleranceValue.hxx".}
proc SetUpperBound*(this: var StepShape_ToleranceValue;
                   upper_bound: handle[Standard_Transient]) {.
    importcpp: "SetUpperBound", header: "StepShape_ToleranceValue.hxx".}
type
  StepShape_ToleranceValuebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_ToleranceValue::get_type_name(@)",
                              header: "StepShape_ToleranceValue.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ToleranceValue::get_type_descriptor(@)",
    header: "StepShape_ToleranceValue.hxx".}
proc DynamicType*(this: StepShape_ToleranceValue): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_ToleranceValue.hxx".}