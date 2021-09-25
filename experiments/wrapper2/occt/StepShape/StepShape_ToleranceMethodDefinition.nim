##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_ToleranceValue"
discard "forward decl of StepShape_LimitsAndFits"
type
  StepShapeToleranceMethodDefinition* {.importcpp: "StepShape_ToleranceMethodDefinition", header: "StepShape_ToleranceMethodDefinition.hxx",
                                       bycopy.} = object of StepDataSelectType


proc constructStepShapeToleranceMethodDefinition*(): StepShapeToleranceMethodDefinition {.
    constructor, importcpp: "StepShape_ToleranceMethodDefinition(@)",
    header: "StepShape_ToleranceMethodDefinition.hxx".}
proc caseNum*(this: StepShapeToleranceMethodDefinition;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_ToleranceMethodDefinition.hxx".}
proc toleranceValue*(this: StepShapeToleranceMethodDefinition): Handle[
    StepShapeToleranceValue] {.noSideEffect, importcpp: "ToleranceValue",
                              header: "StepShape_ToleranceMethodDefinition.hxx".}
proc limitsAndFits*(this: StepShapeToleranceMethodDefinition): Handle[
    StepShapeLimitsAndFits] {.noSideEffect, importcpp: "LimitsAndFits",
                             header: "StepShape_ToleranceMethodDefinition.hxx".}
