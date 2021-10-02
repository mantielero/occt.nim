##  Created on: 2015-08-11
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
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol"
type
  HandleC1C1* = Handle[StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol]
  StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx", bycopy.} = object of StepDimTolGeoTolAndGeoTolWthDatRef


proc constructStepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol*(): StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theType: StepDimTolGeometricToleranceType;
          theUDGT: Handle[StepDimTolUnequallyDisposedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          theType: StepDimTolGeometricToleranceType;
          theUDGT: Handle[StepDimTolUnequallyDisposedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc setUnequallyDisposedGeometricTolerance*(
    this: var StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
    theUDGT: Handle[StepDimTolUnequallyDisposedGeometricTolerance]) {.
    importcpp: "SetUnequallyDisposedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc getUnequallyDisposedGeometricTolerance*(
    this: StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol): Handle[
    StepDimTolUnequallyDisposedGeometricTolerance] {.noSideEffect,
    importcpp: "GetUnequallyDisposedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTolbaseType* = StepDimTolGeoTolAndGeoTolWthDatRef

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndUneqDisGeoTol): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}