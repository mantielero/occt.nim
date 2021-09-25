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

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol"
type
  HandleStepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol* = Handle[
      StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol]
  StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx", bycopy.} = object of StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod


proc constructStepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol*(): StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theMaxTol: Handle[StepBasicLengthMeasureWithUnit];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          aGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theMaxTol: Handle[StepBasicLengthMeasureWithUnit];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc setMaxTolerance*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
                     theMaxTol: var Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetMaxTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc getMaxTolerance*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol): Handle[
    StepBasicLengthMeasureWithUnit] {.importcpp: "GetMaxTolerance", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTolbaseType* = StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol.hxx".}
