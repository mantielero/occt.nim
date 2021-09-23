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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
type
  StepDimTol_GeometricToleranceTarget* {.importcpp: "StepDimTol_GeometricToleranceTarget", header: "StepDimTol_GeometricToleranceTarget.hxx",
                                        bycopy.} = object of StepData_SelectType ## !
                                                                            ## Returns a
                                                                            ## GeometricToleranceTarget
                                                                            ## select type


proc constructStepDimTol_GeometricToleranceTarget*(): StepDimTol_GeometricToleranceTarget {.
    constructor, importcpp: "StepDimTol_GeometricToleranceTarget(@)",
    header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc CaseNum*(this: StepDimTol_GeometricToleranceTarget;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc DimensionalLocation*(this: StepDimTol_GeometricToleranceTarget): handle[
    StepShape_DimensionalLocation] {.noSideEffect,
                                    importcpp: "DimensionalLocation", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc DimensionalSize*(this: StepDimTol_GeometricToleranceTarget): handle[
    StepShape_DimensionalSize] {.noSideEffect, importcpp: "DimensionalSize", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc ProductDefinitionShape*(this: StepDimTol_GeometricToleranceTarget): handle[
    StepRepr_ProductDefinitionShape] {.noSideEffect,
                                      importcpp: "ProductDefinitionShape", header: "StepDimTol_GeometricToleranceTarget.hxx".}
proc ShapeAspect*(this: StepDimTol_GeometricToleranceTarget): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepDimTol_GeometricToleranceTarget.hxx".}