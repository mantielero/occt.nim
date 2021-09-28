##  Created on: 2015-07-07
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
discard "forward decl of StepDimTol_UnequallyDisposedGeometricTolerance"
type
  HandleC1C1* = Handle[StepDimTolUnequallyDisposedGeometricTolerance]

## ! Representation of STEP entity UnequallyDisposedGeometricTolerance

type
  StepDimTolUnequallyDisposedGeometricTolerance* {.
      importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance",
      header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepDimTolUnequallyDisposedGeometricTolerance*(): StepDimTolUnequallyDisposedGeometricTolerance {.
    constructor, importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance(@)",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc init*(this: var StepDimTolUnequallyDisposedGeometricTolerance;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theDisplacement: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc displacement*(this: StepDimTolUnequallyDisposedGeometricTolerance): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect, importcpp: "Displacement", header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc setDisplacement*(this: var StepDimTolUnequallyDisposedGeometricTolerance;
                     theDisplacement: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetDisplacement",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
type
  StepDimTolUnequallyDisposedGeometricTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance::get_type_name(@)", header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_UnequallyDisposedGeometricTolerance::get_type_descriptor(@)",
    header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}
proc dynamicType*(this: StepDimTolUnequallyDisposedGeometricTolerance): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_UnequallyDisposedGeometricTolerance.hxx".}

























