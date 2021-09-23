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
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_GeometricTolerance

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedUnit"
discard "forward decl of StepDimTol_GeometricToleranceWithDefinedUnit"
type
  Handle_StepDimTol_GeometricToleranceWithDefinedUnit* = handle[
      StepDimTol_GeometricToleranceWithDefinedUnit]

## ! Representation of STEP entity GeometricToleranceWithDefinedUnit

type
  StepDimTol_GeometricToleranceWithDefinedUnit* {.
      importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit",
      header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx", bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                                              ## !
                                                                                                              ## Empty
                                                                                                              ## constructor


proc constructStepDimTol_GeometricToleranceWithDefinedUnit*(): StepDimTol_GeometricToleranceWithDefinedUnit {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithDefinedUnit;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithDefinedUnit;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc UnitSize*(this: StepDimTol_GeometricToleranceWithDefinedUnit): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect, importcpp: "UnitSize", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc SetUnitSize*(this: var StepDimTol_GeometricToleranceWithDefinedUnit;
                 theUnitSize: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetUnitSize",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
type
  StepDimTol_GeometricToleranceWithDefinedUnitbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceWithDefinedUnit::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceWithDefinedUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_GeometricToleranceWithDefinedUnit.hxx".}