##  Created on: 2015-08-06
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
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod"
type
  HandleC1C1* = Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod]
  StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx", bycopy.} = object of StepDimTolGeometricTolerance


proc constructStepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod*(): StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          aGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc setGeometricToleranceWithDatumReference*(
    this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
    theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc getGeometricToleranceWithDatumReference*(
    this: StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod): Handle[
    StepDimTolGeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc setGeometricToleranceWithModifiers*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
    theGTWM: Handle[StepDimTolGeometricToleranceWithModifiers]) {.
    importcpp: "SetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc getGeometricToleranceWithModifiers*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod): Handle[
    StepDimTolGeometricToleranceWithModifiers] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc setGeometricToleranceType*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
                               theType: StepDimTolGeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc getToleranceType*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod): StepDimTolGeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthModbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndGeoTolWthMod): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}

























