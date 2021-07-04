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
##  commercial license or contractual agreement. to be the "object code" form of the original source.

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_LengthMeasureWithUnit,
  StepDimTol_GeometricToleranceWithModifiers

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_HArray1OfGeometricToleranceModifier"
discard "forward decl of StepDimTol_GeometricToleranceWithMaximumTolerance"
discard "forward decl of StepDimTol_GeometricToleranceWithMaximumTolerance"
type
  Handle_StepDimTol_GeometricToleranceWithMaximumTolerance* = handle[
      StepDimTol_GeometricToleranceWithMaximumTolerance]

## ! Representation of STEP entity GeometricToleranceWithMaximumTolerance

type
  StepDimTol_GeometricToleranceWithMaximumTolerance* {.
      importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance",
      header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx", bycopy.} = object of StepDimTol_GeometricToleranceWithModifiers ##
                                                                                                                                ## !
                                                                                                                                ## Empty
                                                                                                                                ## constructor


proc constructStepDimTol_GeometricToleranceWithMaximumTolerance*(): StepDimTol_GeometricToleranceWithMaximumTolerance {.
    constructor,
    importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance(@)",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithMaximumTolerance;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theModifiers: handle[StepDimTol_HArray1OfGeometricToleranceModifier];
          theUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc MaximumUpperTolerance*(this: StepDimTol_GeometricToleranceWithMaximumTolerance): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect,
                                      importcpp: "MaximumUpperTolerance", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc SetMaximumUpperTolerance*(this: var StepDimTol_GeometricToleranceWithMaximumTolerance;
    theMaximumUpperTolerance: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetMaximumUpperTolerance",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
type
  StepDimTol_GeometricToleranceWithMaximumTolerancebase_type* = StepDimTol_GeometricToleranceWithModifiers

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceWithMaximumTolerance): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}