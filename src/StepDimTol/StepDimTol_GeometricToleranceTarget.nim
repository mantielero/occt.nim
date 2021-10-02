##  Created on: 2015-07-20
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
type
  StepDimTolGeometricToleranceTarget* {.importcpp: "StepDimTol_GeometricToleranceTarget", header: "StepDimTol_GeometricToleranceTarget.hxx",
                                       bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepDimTolGeometricToleranceTarget; theSize: csize_t): pointer {.
    importcpp: "StepDimTol_GeometricToleranceTarget::operator new",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc `delete`*(this: var StepDimTolGeometricToleranceTarget; theAddress: pointer) {.
    importcpp: "StepDimTol_GeometricToleranceTarget::operator delete",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc `new[]`*(this: var StepDimTolGeometricToleranceTarget; theSize: csize_t): pointer {.
    importcpp: "StepDimTol_GeometricToleranceTarget::operator new[]",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc `delete[]`*(this: var StepDimTolGeometricToleranceTarget; theAddress: pointer) {.
    importcpp: "StepDimTol_GeometricToleranceTarget::operator delete[]",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc `new`*(this: var StepDimTolGeometricToleranceTarget; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepDimTol_GeometricToleranceTarget::operator new", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc `delete`*(this: var StepDimTolGeometricToleranceTarget; a2: pointer; a3: pointer) {.
    importcpp: "StepDimTol_GeometricToleranceTarget::operator delete",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc constructStepDimTolGeometricToleranceTarget*(): StepDimTolGeometricToleranceTarget {.
    constructor, importcpp: "StepDimTol_GeometricToleranceTarget(@)",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc caseNum*(this: StepDimTolGeometricToleranceTarget;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc dimensionalLocation*(this: StepDimTolGeometricToleranceTarget): Handle[
    StepShapeDimensionalLocation] {.noSideEffect,
                                   importcpp: "DimensionalLocation", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc dimensionalSize*(this: StepDimTolGeometricToleranceTarget): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc productDefinitionShape*(this: StepDimTolGeometricToleranceTarget): Handle[
    StepReprProductDefinitionShape] {.noSideEffect,
                                     importcpp: "ProductDefinitionShape", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc shapeAspect*(this: StepDimTolGeometricToleranceTarget): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                          header: "StepDimTol_GeometricToleranceTarget.hxx".}