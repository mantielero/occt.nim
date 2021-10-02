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

discard "forward decl of Standard_Transient"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepShape_PlusMinusTolerance"
type
  StepDimTolShapeToleranceSelect* {.importcpp: "StepDimTol_ShapeToleranceSelect", header: "StepDimTol_ShapeToleranceSelect.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepDimTolShapeToleranceSelect; theSize: csize_t): pointer {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator new",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc `delete`*(this: var StepDimTolShapeToleranceSelect; theAddress: pointer) {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator delete",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc `new[]`*(this: var StepDimTolShapeToleranceSelect; theSize: csize_t): pointer {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator new[]",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc `delete[]`*(this: var StepDimTolShapeToleranceSelect; theAddress: pointer) {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator delete[]",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc `new`*(this: var StepDimTolShapeToleranceSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator new",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc `delete`*(this: var StepDimTolShapeToleranceSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepDimTol_ShapeToleranceSelect::operator delete",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc constructStepDimTolShapeToleranceSelect*(): StepDimTolShapeToleranceSelect {.
    constructor, importcpp: "StepDimTol_ShapeToleranceSelect(@)",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc caseNum*(this: StepDimTolShapeToleranceSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc geometricTolerance*(this: StepDimTolShapeToleranceSelect): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect, importcpp: "GeometricTolerance", header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc plusMinusTolerance*(this: StepDimTolShapeToleranceSelect): Handle[
    StepShapePlusMinusTolerance] {.noSideEffect, importcpp: "PlusMinusTolerance",
                                  header: "StepDimTol_ShapeToleranceSelect.hxx".}