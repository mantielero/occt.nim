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
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRef"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRef"
type
  HandleStepDimTolGeoTolAndGeoTolWthDatRef* = Handle[
      StepDimTolGeoTolAndGeoTolWthDatRef]
  StepDimTolGeoTolAndGeoTolWthDatRef* {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef", header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx",
                                       bycopy.} = object of StepDimTolGeometricTolerance


proc constructStepDimTolGeoTolAndGeoTolWthDatRef*(): StepDimTolGeoTolAndGeoTolWthDatRef {.
    constructor, importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRef;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRef;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theType: StepDimTolGeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc setGeometricToleranceWithDatumReference*(
    this: var StepDimTolGeoTolAndGeoTolWthDatRef;
    theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc getGeometricToleranceWithDatumReference*(
    this: StepDimTolGeoTolAndGeoTolWthDatRef): Handle[
    StepDimTolGeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc setGeometricToleranceType*(this: var StepDimTolGeoTolAndGeoTolWthDatRef;
                               theType: StepDimTolGeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc getToleranceType*(this: StepDimTolGeoTolAndGeoTolWthDatRef): StepDimTolGeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthDatRefbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef::get_type_name(@)",
                            header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthDatRef): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
