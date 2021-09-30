##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
type
  HandleC1C1* = Handle[StepDimTolModifiedGeometricTolerance]

## ! Representation of STEP entity ModifiedGeometricTolerance

type
  StepDimTolModifiedGeometricTolerance* {.
      importcpp: "StepDimTol_ModifiedGeometricTolerance",
      header: "StepDimTol_ModifiedGeometricTolerance.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepDimTolModifiedGeometricTolerance*(): StepDimTolModifiedGeometricTolerance {.
    constructor, importcpp: "StepDimTol_ModifiedGeometricTolerance(@)",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc init*(this: var StepDimTolModifiedGeometricTolerance;
          theGeometricToleranceName: Handle[TCollectionHAsciiString];
          theGeometricToleranceDescription: Handle[TCollectionHAsciiString];
          theGeometricToleranceMagnitude: Handle[StepBasicMeasureWithUnit];
    theGeometricToleranceTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theModifier: StepDimTolLimitCondition) {.importcpp: "Init",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc init*(this: var StepDimTolModifiedGeometricTolerance;
          theGeometricToleranceName: Handle[TCollectionHAsciiString];
          theGeometricToleranceDescription: Handle[TCollectionHAsciiString];
          theGeometricToleranceMagnitude: Handle[StepBasicMeasureWithUnit];
    theGeometricToleranceTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theModifier: StepDimTolLimitCondition) {.importcpp: "Init",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc modifier*(this: StepDimTolModifiedGeometricTolerance): StepDimTolLimitCondition {.
    noSideEffect, importcpp: "Modifier",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc setModifier*(this: var StepDimTolModifiedGeometricTolerance;
                 theModifier: StepDimTolLimitCondition) {.
    importcpp: "SetModifier", header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
type
  StepDimTolModifiedGeometricTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_ModifiedGeometricTolerance::get_type_name(@)",
                            header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_ModifiedGeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc dynamicType*(this: StepDimTolModifiedGeometricTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}

























