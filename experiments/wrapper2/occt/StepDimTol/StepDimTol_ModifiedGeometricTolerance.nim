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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_LimitCondition,
  StepDimTol_GeometricTolerance

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
type
  Handle_StepDimTol_ModifiedGeometricTolerance* = handle[
      StepDimTol_ModifiedGeometricTolerance]

## ! Representation of STEP entity ModifiedGeometricTolerance

type
  StepDimTol_ModifiedGeometricTolerance* {.
      importcpp: "StepDimTol_ModifiedGeometricTolerance",
      header: "StepDimTol_ModifiedGeometricTolerance.hxx", bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepDimTol_ModifiedGeometricTolerance*(): StepDimTol_ModifiedGeometricTolerance {.
    constructor, importcpp: "StepDimTol_ModifiedGeometricTolerance(@)",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc Init*(this: var StepDimTol_ModifiedGeometricTolerance;
          theGeometricTolerance_Name: handle[TCollection_HAsciiString];
          theGeometricTolerance_Description: handle[TCollection_HAsciiString];
          theGeometricTolerance_Magnitude: handle[StepBasic_MeasureWithUnit];
    theGeometricTolerance_TolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theModifier: StepDimTol_LimitCondition) {.importcpp: "Init",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc Init*(this: var StepDimTol_ModifiedGeometricTolerance;
          theGeometricTolerance_Name: handle[TCollection_HAsciiString];
          theGeometricTolerance_Description: handle[TCollection_HAsciiString];
          theGeometricTolerance_Magnitude: handle[StepBasic_MeasureWithUnit];
    theGeometricTolerance_TolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theModifier: StepDimTol_LimitCondition) {.importcpp: "Init",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc Modifier*(this: StepDimTol_ModifiedGeometricTolerance): StepDimTol_LimitCondition {.
    noSideEffect, importcpp: "Modifier",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc SetModifier*(this: var StepDimTol_ModifiedGeometricTolerance;
                 theModifier: StepDimTol_LimitCondition) {.
    importcpp: "SetModifier", header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
type
  StepDimTol_ModifiedGeometricTolerancebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ModifiedGeometricTolerance::get_type_name(@)", header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ModifiedGeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}
proc DynamicType*(this: StepDimTol_ModifiedGeometricTolerance): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_ModifiedGeometricTolerance.hxx".}