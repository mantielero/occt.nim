##  Created on: 2003-02-04
##  Created by: data exchange team
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
discard "forward decl of StepFEA_ElementRepresentation"
discard "forward decl of StepFEA_ElementGroup"
type
  StepFEA_ElementOrElementGroup* {.importcpp: "StepFEA_ElementOrElementGroup",
                                  header: "StepFEA_ElementOrElementGroup.hxx",
                                  bycopy.} = object of StepData_SelectType ## ! Empty
                                                                      ## constructor


proc constructStepFEA_ElementOrElementGroup*(): StepFEA_ElementOrElementGroup {.
    constructor, importcpp: "StepFEA_ElementOrElementGroup(@)",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc CaseNum*(this: StepFEA_ElementOrElementGroup; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_ElementOrElementGroup.hxx".}
proc ElementRepresentation*(this: StepFEA_ElementOrElementGroup): handle[
    StepFEA_ElementRepresentation] {.noSideEffect,
                                    importcpp: "ElementRepresentation",
                                    header: "StepFEA_ElementOrElementGroup.hxx".}
proc ElementGroup*(this: StepFEA_ElementOrElementGroup): handle[
    StepFEA_ElementGroup] {.noSideEffect, importcpp: "ElementGroup",
                           header: "StepFEA_ElementOrElementGroup.hxx".}