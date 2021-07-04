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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepDimTol_AreaUnitType, StepDimTol_GeometricToleranceWithDefinedUnit

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedAreaUnit"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedAreaUnit"
type
  Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit* = handle[
      StepDimTol_GeometricToleranceWithDefinedAreaUnit]

## ! Representation of STEP entity GeometricToleranceWithDefinedAreaUnit

type
  StepDimTol_GeometricToleranceWithDefinedAreaUnit* {.
      importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit",
      header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx", bycopy.} = object of StepDimTol_GeometricToleranceWithDefinedUnit ##
                                                                                                                                 ## !
                                                                                                                                 ## Empty
                                                                                                                                 ## constructor


proc constructStepDimTol_GeometricToleranceWithDefinedAreaUnit*(): StepDimTol_GeometricToleranceWithDefinedAreaUnit {.
    constructor,
    importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithDefinedAreaUnit;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theUnitSize: handle[StepBasic_LengthMeasureWithUnit];
          theAreaType: StepDimTol_AreaUnitType;
          theHasSecondUnitSize: Standard_Boolean;
          theSecondUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc AreaType*(this: StepDimTol_GeometricToleranceWithDefinedAreaUnit): StepDimTol_AreaUnitType {.
    noSideEffect, importcpp: "AreaType",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc SetAreaType*(this: var StepDimTol_GeometricToleranceWithDefinedAreaUnit;
                 theAreaType: StepDimTol_AreaUnitType) {.importcpp: "SetAreaType",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc SecondUnitSize*(this: StepDimTol_GeometricToleranceWithDefinedAreaUnit): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect, importcpp: "SecondUnitSize", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc SetSecondUnitSize*(this: var StepDimTol_GeometricToleranceWithDefinedAreaUnit;
    theSecondUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetSecondUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc HasSecondUnitSize*(this: StepDimTol_GeometricToleranceWithDefinedAreaUnit): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
type
  StepDimTol_GeometricToleranceWithDefinedAreaUnitbase_type* = StepDimTol_GeometricToleranceWithDefinedUnit

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceWithDefinedAreaUnit::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceWithDefinedAreaUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithDefinedAreaUnit.hxx".}