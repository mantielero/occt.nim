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
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedAreaUnit"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedAreaUnit"
type
  HandleC1C1* = Handle[StepDimTolGeometricToleranceWithDefinedAreaUnit]

## ! Representation of STEP entity GeometricToleranceWithDefinedAreaUnit

type
  StepDimTolGeometricToleranceWithDefinedAreaUnit* {.
      importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit",
      header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx", bycopy.} = object of StepDimTolGeometricToleranceWithDefinedUnit ##
                                                                                                                                ## !
                                                                                                                                ## Empty
                                                                                                                                ## constructor


proc constructStepDimTolGeometricToleranceWithDefinedAreaUnit*(): StepDimTolGeometricToleranceWithDefinedAreaUnit {.
    constructor,
    importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithDefinedAreaUnit;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theUnitSize: Handle[StepBasicLengthMeasureWithUnit];
          theAreaType: StepDimTolAreaUnitType; theHasSecondUnitSize: bool;
          theSecondUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc areaType*(this: StepDimTolGeometricToleranceWithDefinedAreaUnit): StepDimTolAreaUnitType {.
    noSideEffect, importcpp: "AreaType",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc setAreaType*(this: var StepDimTolGeometricToleranceWithDefinedAreaUnit;
                 theAreaType: StepDimTolAreaUnitType) {.importcpp: "SetAreaType",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc secondUnitSize*(this: StepDimTolGeometricToleranceWithDefinedAreaUnit): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect, importcpp: "SecondUnitSize", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc setSecondUnitSize*(this: var StepDimTolGeometricToleranceWithDefinedAreaUnit;
    theSecondUnitSize: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetSecondUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc hasSecondUnitSize*(this: StepDimTolGeometricToleranceWithDefinedAreaUnit): bool {.
    noSideEffect, importcpp: "HasSecondUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
type
  StepDimTolGeometricToleranceWithDefinedAreaUnitbaseType* = StepDimTolGeometricToleranceWithDefinedUnit

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceWithDefinedAreaUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}

























