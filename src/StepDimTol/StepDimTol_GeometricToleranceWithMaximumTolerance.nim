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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_HArray1OfGeometricToleranceModifier"
discard "forward decl of StepDimTol_GeometricToleranceWithMaximumTolerance"
discard "forward decl of StepDimTol_GeometricToleranceWithMaximumTolerance"
type
  HandleC1C1* = Handle[StepDimTolGeometricToleranceWithMaximumTolerance]

## ! Representation of STEP entity GeometricToleranceWithMaximumTolerance

type
  StepDimTolGeometricToleranceWithMaximumTolerance* {.
      importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance",
      header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx", bycopy.} = object of StepDimTolGeometricToleranceWithModifiers ##
                                                                                                                               ## !
                                                                                                                               ## Empty
                                                                                                                               ## constructor


proc constructStepDimTolGeometricToleranceWithMaximumTolerance*(): StepDimTolGeometricToleranceWithMaximumTolerance {.
    constructor,
    importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance(@)",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithMaximumTolerance;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theModifiers: Handle[StepDimTolHArray1OfGeometricToleranceModifier];
          theUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc maximumUpperTolerance*(this: StepDimTolGeometricToleranceWithMaximumTolerance): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect,
                                     importcpp: "MaximumUpperTolerance", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc setMaximumUpperTolerance*(this: var StepDimTolGeometricToleranceWithMaximumTolerance;
    theMaximumUpperTolerance: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetMaximumUpperTolerance",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
type
  StepDimTolGeometricToleranceWithMaximumTolerancebaseType* = StepDimTolGeometricToleranceWithModifiers

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceWithMaximumTolerance::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceWithMaximumTolerance): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithMaximumTolerance.hxx".}