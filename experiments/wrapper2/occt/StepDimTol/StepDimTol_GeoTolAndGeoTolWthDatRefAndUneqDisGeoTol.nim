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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepDimTol_GeoTolAndGeoTolWthDatRef

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol* = handle[
      StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol]
  StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx", bycopy.} = object of StepDimTol_GeoTolAndGeoTolWthDatRef


proc constructStepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol*(): StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theType: StepDimTol_GeometricToleranceType;
          theUDGT: handle[StepDimTol_UnequallyDisposedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          theType: StepDimTol_GeometricToleranceType;
          theUDGT: handle[StepDimTol_UnequallyDisposedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc SetUnequallyDisposedGeometricTolerance*(
    this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
    theUDGT: handle[StepDimTol_UnequallyDisposedGeometricTolerance]) {.
    importcpp: "SetUnequallyDisposedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc GetUnequallyDisposedGeometricTolerance*(
    this: StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol): handle[
    StepDimTol_UnequallyDisposedGeometricTolerance] {.noSideEffect,
    importcpp: "GetUnequallyDisposedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTolbase_type* = StepDimTol_GeoTolAndGeoTolWthDatRef

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol.hxx".}