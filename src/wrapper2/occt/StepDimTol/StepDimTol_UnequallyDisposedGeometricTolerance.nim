##  Created on: 2015-07-07
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../StepBasic/StepBasic_LengthMeasureWithUnit, StepDimTol_GeometricTolerance

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
type
  Handle_StepDimTol_UnequallyDisposedGeometricTolerance* = handle[
      StepDimTol_UnequallyDisposedGeometricTolerance]

## ! Representation of STEP entity UnequallyDisposedGeometricTolerance

type
  StepDimTol_UnequallyDisposedGeometricTolerance* {.
      importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance",
      header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx", bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor


proc constructStepDimTol_UnequallyDisposedGeometricTolerance*(): StepDimTol_UnequallyDisposedGeometricTolerance {.
    constructor, importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance(@)",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc Init*(this: var StepDimTol_UnequallyDisposedGeometricTolerance;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theDisplacement: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc Displacement*(this: StepDimTol_UnequallyDisposedGeometricTolerance): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect, importcpp: "Displacement", header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc SetDisplacement*(this: var StepDimTol_UnequallyDisposedGeometricTolerance;
                     theDisplacement: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetDisplacement",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
type
  StepDimTol_UnequallyDisposedGeometricTolerancebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance::get_type_name(@)", header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc DynamicType*(this: StepDimTol_UnequallyDisposedGeometricTolerance): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}