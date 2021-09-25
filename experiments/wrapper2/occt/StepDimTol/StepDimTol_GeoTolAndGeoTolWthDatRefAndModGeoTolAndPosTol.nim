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
  HandleStepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* = Handle[
      StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol]
  StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* {.
      importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol",
      header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx",
      bycopy.} = object of StepDimTolGeometricTolerance


proc constructStepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*(): StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {.
    constructor,
    importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: Handle[StepReprShapeAspect];
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          aMGT: Handle[StepDimTolModifiedGeometricTolerance]) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc init*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aMagnitude: Handle[StepBasicMeasureWithUnit];
          aTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference];
          aMGT: Handle[StepDimTolModifiedGeometricTolerance]) {.importcpp: "Init",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc setGeometricToleranceWithDatumReference*(
    this: var StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
    aGTWDR: Handle[StepDimTolGeometricToleranceWithDatumReference]) {.
    importcpp: "SetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc getGeometricToleranceWithDatumReference*(
    this: StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): Handle[
    StepDimTolGeometricToleranceWithDatumReference] {.noSideEffect,
    importcpp: "GetGeometricToleranceWithDatumReference",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc setModifiedGeometricTolerance*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
    aMGT: Handle[StepDimTolModifiedGeometricTolerance]) {.
    importcpp: "SetModifiedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc getModifiedGeometricTolerance*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): Handle[
    StepDimTolModifiedGeometricTolerance] {.noSideEffect,
    importcpp: "GetModifiedGeometricTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc setPositionTolerance*(this: var StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
                          aPT: Handle[StepDimTolPositionTolerance]) {.
    importcpp: "SetPositionTolerance",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc getPositionTolerance*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): Handle[
    StepDimTolPositionTolerance] {.noSideEffect,
                                  importcpp: "GetPositionTolerance", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
type
  StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTolbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::get_type_name(@)", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::get_type_descriptor(@)",
    header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
proc dynamicType*(this: StepDimTolGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol.hxx".}
