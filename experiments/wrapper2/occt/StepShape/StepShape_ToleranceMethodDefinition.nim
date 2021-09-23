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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_ToleranceValue"
discard "forward decl of StepShape_LimitsAndFits"
type
  StepShape_ToleranceMethodDefinition* {.importcpp: "StepShape_ToleranceMethodDefinition", header: "StepShape_ToleranceMethodDefinition.hxx",
                                        bycopy.} = object of StepData_SelectType


proc constructStepShape_ToleranceMethodDefinition*(): StepShape_ToleranceMethodDefinition {.
    constructor, importcpp: "StepShape_ToleranceMethodDefinition(@)",
    header: "StepShape_ToleranceMethodDefinition.hxx".}
proc CaseNum*(this: StepShape_ToleranceMethodDefinition;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_ToleranceMethodDefinition.hxx".}
proc ToleranceValue*(this: StepShape_ToleranceMethodDefinition): handle[
    StepShape_ToleranceValue] {.noSideEffect, importcpp: "ToleranceValue", header: "StepShape_ToleranceMethodDefinition.hxx".}
proc LimitsAndFits*(this: StepShape_ToleranceMethodDefinition): handle[
    StepShape_LimitsAndFits] {.noSideEffect, importcpp: "LimitsAndFits",
                              header: "StepShape_ToleranceMethodDefinition.hxx".}