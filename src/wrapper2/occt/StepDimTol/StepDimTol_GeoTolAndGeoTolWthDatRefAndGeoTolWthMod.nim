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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_GeometricTolerance,
  StepDimTol_GeometricToleranceType

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod* = handle[
      StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod]
  StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx", bycopy.} = object of StepDimTol_GeometricTolerance


proc constructStepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod*(): StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          aGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc SetGeometricToleranceWithDatumReference*(
    this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
    theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc GetGeometricToleranceWithDatumReference*(
    this: StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod): handle[
    StepDimTol_GeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc SetGeometricToleranceWithModifiers*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
    theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers]) {.
    importcpp: "SetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc GetGeometricToleranceWithModifiers*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod): handle[
    StepDimTol_GeometricToleranceWithModifiers] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc SetGeometricToleranceType*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
                               theType: StepDimTol_GeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc GetToleranceType*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod): StepDimTol_GeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthModbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod.hxx".}