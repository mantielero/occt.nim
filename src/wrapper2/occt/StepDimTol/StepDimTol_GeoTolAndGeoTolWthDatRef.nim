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
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRef"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRef"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthDatRef* = handle[
      StepDimTol_GeoTolAndGeoTolWthDatRef]
  StepDimTol_GeoTolAndGeoTolWthDatRef* {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef", header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx",
                                        bycopy.} = object of StepDimTol_GeometricTolerance


proc constructStepDimTol_GeoTolAndGeoTolWthDatRef*(): StepDimTol_GeoTolAndGeoTolWthDatRef {.
    constructor, importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRef;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRef;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theType: StepDimTol_GeometricToleranceType) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc SetGeometricToleranceWithDatumReference*(
    this: var StepDimTol_GeoTolAndGeoTolWthDatRef;
    theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc GetGeometricToleranceWithDatumReference*(
    this: StepDimTol_GeoTolAndGeoTolWthDatRef): handle[
    StepDimTol_GeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc SetGeometricToleranceType*(this: var StepDimTol_GeoTolAndGeoTolWthDatRef;
                               theType: StepDimTol_GeometricToleranceType) {.
    importcpp: "SetGeometricToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc GetToleranceType*(this: StepDimTol_GeoTolAndGeoTolWthDatRef): StepDimTol_GeometricToleranceType {.
    noSideEffect, importcpp: "GetToleranceType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthDatRefbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef::get_type_name(@)",
                              header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRef::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthDatRef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRef.hxx".}