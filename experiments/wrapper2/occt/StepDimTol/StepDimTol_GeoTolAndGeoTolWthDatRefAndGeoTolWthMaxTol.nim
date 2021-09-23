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
  StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod,
  StepDimTol_GeometricToleranceType

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol* = handle[
      StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol]
  StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx", bycopy.} = object of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod


proc constructStepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol*(): StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theMaxTol: handle[StepBasic_LengthMeasureWithUnit];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          aGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theMaxTol: handle[StepBasic_LengthMeasureWithUnit];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc SetMaxTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
                     theMaxTol: var handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetMaxTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc GetMaxTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol): handle[
    StepBasic_LengthMeasureWithUnit] {.importcpp: "GetMaxTolerance", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTolbase_type* = StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}