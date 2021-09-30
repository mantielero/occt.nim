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

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedUnit"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedUnit"
type
  HandleC1C1* = Handle[StepDimTolGeometricToleranceWithDefinedUnit]

## ! Representation of STEP entity GeometricToleranceWithDefinedUnit

type
  StepDimTolGeometricToleranceWithDefinedUnit* {.
      importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit",
      header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepDimTolGeometricToleranceWithDefinedUnit*(): StepDimTolGeometricToleranceWithDefinedUnit {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithDefinedUnit;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithDefinedUnit;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc unitSize*(this: StepDimTolGeometricToleranceWithDefinedUnit): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect, importcpp: "UnitSize", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc setUnitSize*(this: var StepDimTolGeometricToleranceWithDefinedUnit;
                 theUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
type
  StepDimTolGeometricToleranceWithDefinedUnitbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceWithDefinedUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}

























