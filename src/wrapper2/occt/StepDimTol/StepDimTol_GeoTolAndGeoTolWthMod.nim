##  Created on: 2015-08-10
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
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMod"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMod"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthMod* = handle[
      StepDimTol_GeoTolAndGeoTolWthMod]
  StepDimTol_GeoTolAndGeoTolWthMod* {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMod", header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx",
                                     bycopy.} = object of StepDimTol_GeometricTolerance


proc constructStepDimTol_GeoTolAndGeoTolWthMod*(): StepDimTol_GeoTolAndGeoTolWthMod {.
    constructor, importcpp: "StepDimTol_GeoTolAndGeoTolWthMod(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthMod;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthMod;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWM: handle[StepDimTol_GeometricToleranceWithModifiers];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc SetGeometricToleranceWithModifiers*(this: var StepDimTol_GeoTolAndGeoTolWthMod;
    theGTWM: handle[StepDimTol_GeometricToleranceWithModifiers]) {.
    importcpp: "SetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc GetGeometricToleranceWithModifiers*(this: StepDimTol_GeoTolAndGeoTolWthMod): handle[
    StepDimTol_GeometricToleranceWithModifiers] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc SetGeometricToleranceType*(this: var StepDimTol_GeoTolAndGeoTolWthMod;
                               theType: StepDimTol_GeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc GetToleranceType*(this: StepDimTol_GeoTolAndGeoTolWthMod): StepDimTol_GeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthModbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMod::get_type_name(@)",
                              header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_GeoTolAndGeoTolWthMod::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthMod): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}