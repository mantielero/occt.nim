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

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepShape_ToleranceValue"
discard "forward decl of StepShape_ToleranceValue"
type
  HandleC1C1* = Handle[StepShapeToleranceValue]

## ! Added for Dimensional Tolerances

type
  StepShapeToleranceValue* {.importcpp: "StepShape_ToleranceValue",
                            header: "StepShape_ToleranceValue.hxx", bycopy.} = object of StandardTransient


proc constructStepShapeToleranceValue*(): StepShapeToleranceValue {.constructor,
    importcpp: "StepShape_ToleranceValue(@)",
    header: "StepShape_ToleranceValue.hxx".}
proc init*(this: var StepShapeToleranceValue; lowerBound: Handle[StandardTransient];
          upperBound: Handle[StandardTransient]) {.importcpp: "Init",
    header: "StepShape_ToleranceValue.hxx".}
proc lowerBound*(this: StepShapeToleranceValue): Handle[StandardTransient] {.
    noSideEffect, importcpp: "LowerBound", header: "StepShape_ToleranceValue.hxx".}
proc setLowerBound*(this: var StepShapeToleranceValue;
                   lowerBound: Handle[StandardTransient]) {.
    importcpp: "SetLowerBound", header: "StepShape_ToleranceValue.hxx".}
proc upperBound*(this: StepShapeToleranceValue): Handle[StandardTransient] {.
    noSideEffect, importcpp: "UpperBound", header: "StepShape_ToleranceValue.hxx".}
proc setUpperBound*(this: var StepShapeToleranceValue;
                   upperBound: Handle[StandardTransient]) {.
    importcpp: "SetUpperBound", header: "StepShape_ToleranceValue.hxx".}
type
  StepShapeToleranceValuebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_ToleranceValue::get_type_name(@)",
                            header: "StepShape_ToleranceValue.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ToleranceValue::get_type_descriptor(@)",
    header: "StepShape_ToleranceValue.hxx".}
proc dynamicType*(this: StepShapeToleranceValue): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_ToleranceValue.hxx".}