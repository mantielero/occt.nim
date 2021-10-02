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

discard "forward decl of StepShape_ToleranceMethodDefinition"
discard "forward decl of StepShape_DimensionalCharacteristic"
discard "forward decl of StepShape_PlusMinusTolerance"
discard "forward decl of StepShape_PlusMinusTolerance"
type
  HandleC1C1* = Handle[StepShapePlusMinusTolerance]

## ! Added for Dimensional Tolerances

type
  StepShapePlusMinusTolerance* {.importcpp: "StepShape_PlusMinusTolerance",
                                header: "StepShape_PlusMinusTolerance.hxx", bycopy.} = object of StandardTransient


proc constructStepShapePlusMinusTolerance*(): StepShapePlusMinusTolerance {.
    constructor, importcpp: "StepShape_PlusMinusTolerance(@)",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc init*(this: var StepShapePlusMinusTolerance;
          range: StepShapeToleranceMethodDefinition;
          tolerancedDimension: StepShapeDimensionalCharacteristic) {.
    importcpp: "Init", header: "StepShape_PlusMinusTolerance.hxx".}
proc range*(this: StepShapePlusMinusTolerance): StepShapeToleranceMethodDefinition {.
    noSideEffect, importcpp: "Range", header: "StepShape_PlusMinusTolerance.hxx".}
proc setRange*(this: var StepShapePlusMinusTolerance;
              range: StepShapeToleranceMethodDefinition) {.importcpp: "SetRange",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc tolerancedDimension*(this: StepShapePlusMinusTolerance): StepShapeDimensionalCharacteristic {.
    noSideEffect, importcpp: "TolerancedDimension",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc setTolerancedDimension*(this: var StepShapePlusMinusTolerance;
    tolerancedDimension: StepShapeDimensionalCharacteristic) {.
    importcpp: "SetTolerancedDimension",
    header: "StepShape_PlusMinusTolerance.hxx".}
type
  StepShapePlusMinusTolerancebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_PlusMinusTolerance::get_type_name(@)",
                            header: "StepShape_PlusMinusTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_PlusMinusTolerance::get_type_descriptor(@)",
    header: "StepShape_PlusMinusTolerance.hxx".}
proc dynamicType*(this: StepShapePlusMinusTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_PlusMinusTolerance.hxx".}