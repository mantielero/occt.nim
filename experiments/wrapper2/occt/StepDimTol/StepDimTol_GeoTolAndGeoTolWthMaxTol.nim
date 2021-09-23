##  Created on: 2015-11-13
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
  StepDimTol_GeoTolAndGeoTolWthMod, StepDimTol_GeometricToleranceType

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMaxTol"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMaxTol"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol* = handle[
      StepDimTol_GeoTolAndGeoTolWthMaxTol]
  StepDimTol_GeoTolAndGeoTolWthMaxTol* {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMaxTol", header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx",
                                        bycopy.} = object of StepDimTol_GeoTolAndGeoTolWthMod


proc constructStepDimTol_GeoTolAndGeoTolWthMaxTol*(): StepDimTol_GeoTolAndGeoTolWthMaxTol {.
    constructor, importcpp: "StepDimTol_GeoTolAndGeoTolWthMaxTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthMaxTol;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theMaxTol: handle[StepBasic_LengthMeasureWithUnit];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthMaxTol;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theMaxTol: handle[StepBasic_LengthMeasureWithUnit];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc SetMaxTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthMaxTol;
                     theMaxTol: var handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetMaxTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc GetMaxTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthMaxTol): handle[
    StepBasic_LengthMeasureWithUnit] {.importcpp: "GetMaxTolerance", header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthMaxTolbase_type* = StepDimTol_GeoTolAndGeoTolWthMod

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMaxTol::get_type_name(@)",
                              header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_GeoTolAndGeoTolWthMaxTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthMaxTol): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeoTolAndGeoTolWthMaxTol.hxx".}