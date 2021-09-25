##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
type
  HandleStepDimTolGeometricToleranceWithDatumReference* = Handle[
      StepDimTolGeometricToleranceWithDatumReference]

## ! Representation of STEP entity GeometricToleranceWithDatumReference

type
  StepDimTolGeometricToleranceWithDatumReference* {.
      importcpp: "StepDimTol_GeometricToleranceWithDatumReference",
      header: "StepDimTol_GeometricToleranceWithDatumReference.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor


proc constructStepDimTolGeometricToleranceWithDatumReference*(): StepDimTolGeometricToleranceWithDatumReference {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithDatumReference(@)",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithDatumReference;
          theGeometricToleranceName: Handle[TCollectionHAsciiString];
          theGeometricToleranceDescription: Handle[TCollectionHAsciiString];
          theGeometricToleranceMagnitude: Handle[StepBasicMeasureWithUnit];
    theGeometricToleranceTolerancedShapeAspect: Handle[StepReprShapeAspect];
          theDatumSystem: Handle[StepDimTolHArray1OfDatumReference]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithDatumReference;
          theGeometricToleranceName: Handle[TCollectionHAsciiString];
          theGeometricToleranceDescription: Handle[TCollectionHAsciiString];
          theGeometricToleranceMagnitude: Handle[StepBasicMeasureWithUnit];
    theGeometricToleranceTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theDatumSystem: Handle[StepDimTolHArray1OfDatumSystemOrReference]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc datumSystem*(this: StepDimTolGeometricToleranceWithDatumReference): Handle[
    StepDimTolHArray1OfDatumReference] {.noSideEffect, importcpp: "DatumSystem", header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc datumSystemAP242*(this: StepDimTolGeometricToleranceWithDatumReference): Handle[
    StepDimTolHArray1OfDatumSystemOrReference] {.noSideEffect,
    importcpp: "DatumSystemAP242",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc setDatumSystem*(this: var StepDimTolGeometricToleranceWithDatumReference;
                    theDatumSystem: Handle[StepDimTolHArray1OfDatumReference]) {.
    importcpp: "SetDatumSystem",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc setDatumSystem*(this: var StepDimTolGeometricToleranceWithDatumReference;
    theDatumSystem: Handle[StepDimTolHArray1OfDatumSystemOrReference]) {.
    importcpp: "SetDatumSystem",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
type
  StepDimTolGeometricToleranceWithDatumReferencebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDatumReference::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceWithDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceWithDatumReference): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
