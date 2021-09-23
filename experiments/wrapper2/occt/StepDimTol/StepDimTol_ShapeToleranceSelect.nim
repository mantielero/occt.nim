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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepShape_PlusMinusTolerance"
type
  StepDimTol_ShapeToleranceSelect* {.importcpp: "StepDimTol_ShapeToleranceSelect", header: "StepDimTol_ShapeToleranceSelect.hxx",
                                    bycopy.} = object of StepData_SelectType ## ! Empty
                                                                        ## constructor


proc constructStepDimTol_ShapeToleranceSelect*(): StepDimTol_ShapeToleranceSelect {.
    constructor, importcpp: "StepDimTol_ShapeToleranceSelect(@)",
    header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc CaseNum*(this: StepDimTol_ShapeToleranceSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc GeometricTolerance*(this: StepDimTol_ShapeToleranceSelect): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "GeometricTolerance", header: "StepDimTol_ShapeToleranceSelect.hxx".}
proc PlusMinusTolerance*(this: StepDimTol_ShapeToleranceSelect): handle[
    StepShape_PlusMinusTolerance] {.noSideEffect, importcpp: "PlusMinusTolerance", header: "StepDimTol_ShapeToleranceSelect.hxx".}