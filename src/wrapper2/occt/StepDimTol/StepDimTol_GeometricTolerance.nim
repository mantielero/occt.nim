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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  StepDimTol_GeometricToleranceTarget

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeometricTolerance"
type
  Handle_StepDimTol_GeometricTolerance* = handle[StepDimTol_GeometricTolerance]

## ! Representation of STEP entity GeometricTolerance

type
  StepDimTol_GeometricTolerance* {.importcpp: "StepDimTol_GeometricTolerance",
                                  header: "StepDimTol_GeometricTolerance.hxx",
                                  bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepDimTol_GeometricTolerance*(): StepDimTol_GeometricTolerance {.
    constructor, importcpp: "StepDimTol_GeometricTolerance(@)",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc Init*(this: var StepDimTol_GeometricTolerance;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: handle[StepRepr_ShapeAspect]) {.
    importcpp: "Init", header: "StepDimTol_GeometricTolerance.hxx".}
proc Init*(this: var StepDimTol_GeometricTolerance;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget) {.
    importcpp: "Init", header: "StepDimTol_GeometricTolerance.hxx".}
proc Name*(this: StepDimTol_GeometricTolerance): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepDimTol_GeometricTolerance.hxx".}
proc SetName*(this: var StepDimTol_GeometricTolerance;
             theName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc Description*(this: StepDimTol_GeometricTolerance): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepDimTol_GeometricTolerance.hxx".}
proc SetDescription*(this: var StepDimTol_GeometricTolerance;
                    theDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepDimTol_GeometricTolerance.hxx".}
proc Magnitude*(this: StepDimTol_GeometricTolerance): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "Magnitude",
                                header: "StepDimTol_GeometricTolerance.hxx".}
proc SetMagnitude*(this: var StepDimTol_GeometricTolerance;
                  theMagnitude: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetMagnitude", header: "StepDimTol_GeometricTolerance.hxx".}
proc TolerancedShapeAspect*(this: StepDimTol_GeometricTolerance): StepDimTol_GeometricToleranceTarget {.
    noSideEffect, importcpp: "TolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc SetTolerancedShapeAspect*(this: var StepDimTol_GeometricTolerance;
    theTolerancedShapeAspect: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetTolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc SetTolerancedShapeAspect*(this: var StepDimTol_GeometricTolerance;
    theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget) {.
    importcpp: "SetTolerancedShapeAspect",
    header: "StepDimTol_GeometricTolerance.hxx".}
type
  StepDimTol_GeometricTolerancebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricTolerance::get_type_name(@)",
                              header: "StepDimTol_GeometricTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_GeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_GeometricTolerance.hxx".}
proc DynamicType*(this: StepDimTol_GeometricTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeometricTolerance.hxx".}