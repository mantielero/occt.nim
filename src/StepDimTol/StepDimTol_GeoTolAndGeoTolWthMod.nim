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

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMod"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthMod"
type
  HandleC1C1* = Handle[StepDimTolGeoTolAndGeoTolWthMod]
  StepDimTolGeoTolAndGeoTolWthMod* {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMod", header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx",
                                    bycopy.} = object of StepDimTolGeometricTolerance


proc constructStepDimTolGeoTolAndGeoTolWthMod*(): StepDimTolGeoTolAndGeoTolWthMod {.
    constructor, importcpp: "StepDimTol_GeoTolAndGeoTolWthMod(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthMod;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthMod;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWM: Handle[StepDimTolGeometricToleranceWithModifiers];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc setGeometricToleranceWithModifiers*(this: var StepDimTolGeoTolAndGeoTolWthMod;
    theGTWM: Handle[StepDimTolGeometricToleranceWithModifiers]) {.
    importcpp: "SetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc getGeometricToleranceWithModifiers*(this: StepDimTolGeoTolAndGeoTolWthMod): Handle[
    StepDimTolGeometricToleranceWithModifiers] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithModifiers",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc setGeometricToleranceType*(this: var StepDimTolGeoTolAndGeoTolWthMod;
                               theType: StepDimTolGeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc getToleranceType*(this: StepDimTolGeoTolAndGeoTolWthMod): StepDimTolGeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthModbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthMod::get_type_name(@)",
                            header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_GeoTolAndGeoTolWthMod::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthMod): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeoTolAndGeoTolWthMod.hxx".}

























