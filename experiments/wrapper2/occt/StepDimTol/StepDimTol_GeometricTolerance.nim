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
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeometricTolerance"
type
  HandleStepDimTolGeometricTolerance* = Handle[StepDimTolGeometricTolerance]

## ! Representation of STEP entity GeometricTolerance

type
  StepDimTolGeometricTolerance* {.importcpp: "StepDimTol_GeometricTolerance",
                                 header: "StepDimTol_GeometricTolerance.hxx",
                                 bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepDimTolGeometricTolerance*(): StepDimTolGeometricTolerance {.
    constructor, importcpp: "StepDimTol_GeometricTolerance(@)",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc init*(this: var StepDimTolGeometricTolerance;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: Handle[StepReprShapeAspect]) {.
    importcpp: "Init", header: "StepDimTol_GeometricTolerance.hxx".}
proc init*(this: var StepDimTolGeometricTolerance;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget) {.
    importcpp: "Init", header: "StepDimTol_GeometricTolerance.hxx".}
proc name*(this: StepDimTolGeometricTolerance): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepDimTol_GeometricTolerance.hxx".}
proc setName*(this: var StepDimTolGeometricTolerance;
             theName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc description*(this: StepDimTolGeometricTolerance): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepDimTol_GeometricTolerance.hxx".}
proc setDescription*(this: var StepDimTolGeometricTolerance;
                    theDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepDimTol_GeometricTolerance.hxx".}
proc magnitude*(this: StepDimTolGeometricTolerance): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "Magnitude",
                               header: "StepDimTol_GeometricTolerance.hxx".}
proc setMagnitude*(this: var StepDimTolGeometricTolerance;
                  theMagnitude: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetMagnitude", header: "StepDimTol_GeometricTolerance.hxx".}
proc tolerancedShapeAspect*(this: StepDimTolGeometricTolerance): StepDimTolGeometricToleranceTarget {.
    noSideEffect, importcpp: "TolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc setTolerancedShapeAspect*(this: var StepDimTolGeometricTolerance;
    theTolerancedShapeAspect: Handle[StepReprShapeAspect]) {.
    importcpp: "SetTolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc setTolerancedShapeAspect*(this: var StepDimTolGeometricTolerance;
    theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget) {.
    importcpp: "SetTolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
type
  StepDimTolGeometricTolerancebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricTolerance::get_type_name(@)",
                            header: "StepDimTol_GeometricTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_GeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc dynamicType*(this: StepDimTolGeometricTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeometricTolerance.hxx".}
