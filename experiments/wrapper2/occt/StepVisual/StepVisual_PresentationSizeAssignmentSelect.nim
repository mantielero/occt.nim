##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepVisual_PresentationView"
discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepVisual_AreaInSet"
type
  StepVisual_PresentationSizeAssignmentSelect* {.
      importcpp: "StepVisual_PresentationSizeAssignmentSelect",
      header: "StepVisual_PresentationSizeAssignmentSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## PresentationSizeAssignmentSelect
                                                                                                   ## SelectType


proc constructStepVisual_PresentationSizeAssignmentSelect*(): StepVisual_PresentationSizeAssignmentSelect {.
    constructor, importcpp: "StepVisual_PresentationSizeAssignmentSelect(@)",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc CaseNum*(this: StepVisual_PresentationSizeAssignmentSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc PresentationView*(this: StepVisual_PresentationSizeAssignmentSelect): handle[
    StepVisual_PresentationView] {.noSideEffect, importcpp: "PresentationView", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc PresentationArea*(this: StepVisual_PresentationSizeAssignmentSelect): handle[
    StepVisual_PresentationArea] {.noSideEffect, importcpp: "PresentationArea", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}
proc AreaInSet*(this: StepVisual_PresentationSizeAssignmentSelect): handle[
    StepVisual_AreaInSet] {.noSideEffect, importcpp: "AreaInSet", header: "StepVisual_PresentationSizeAssignmentSelect.hxx".}