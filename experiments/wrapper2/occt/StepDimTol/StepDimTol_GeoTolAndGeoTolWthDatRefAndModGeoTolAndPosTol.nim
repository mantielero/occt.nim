##  Created on: 2003-08-22
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepDimTol_GeometricTolerance

discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_ModifiedGeometricTolerance"
discard "forward decl of StepDimTol_PositionTolerance"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol"
discard "forward decl of StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol"
type
  Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* = handle[
      StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol]
  StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx",
      bycopy.} = object of StepDimTol_GeometricTolerance


proc constructStepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*(): StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          aMGT: handle[StepDimTol_ModifiedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc Init*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aMagnitude: handle[StepBasic_MeasureWithUnit];
          aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference];
          aMGT: handle[StepDimTol_ModifiedGeometricTolerance]) {.
    importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc SetGeometricToleranceWithDatumReference*(
    this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
    aGTWDR: handle[StepDimTol_GeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc GetGeometricToleranceWithDatumReference*(
    this: StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): handle[
    StepDimTol_GeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc SetModifiedGeometricTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
    aMGT: handle[StepDimTol_ModifiedGeometricTolerance]) {.
    importcpp: "SetModifiedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc GetModifiedGeometricTolerance*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): handle[
    StepDimTol_ModifiedGeometricTolerance] {.noSideEffect,
    importcpp: "GetModifiedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc SetPositionTolerance*(this: var StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
                          aPT: handle[StepDimTol_PositionTolerance]) {.
    importcpp: "SetPositionTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc GetPositionTolerance*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): handle[
    StepDimTol_PositionTolerance] {.noSideEffect,
                                   importcpp: "GetPositionTolerance", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
type
  StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTolbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc DynamicType*(this: StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}