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
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepVisual_MarkerMember"
type
  StepVisual_MarkerSelect* {.importcpp: "StepVisual_MarkerSelect",
                            header: "StepVisual_MarkerSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## MarkerSelect
                                                                                                     ## SelectType


proc constructStepVisual_MarkerSelect*(): StepVisual_MarkerSelect {.constructor,
    importcpp: "StepVisual_MarkerSelect(@)", header: "StepVisual_MarkerSelect.hxx".}
proc CaseNum*(this: StepVisual_MarkerSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_MarkerSelect.hxx".}
proc NewMember*(this: StepVisual_MarkerSelect): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepVisual_MarkerSelect.hxx".}
proc CaseMem*(this: StepVisual_MarkerSelect; sm: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepVisual_MarkerSelect.hxx".}
proc MarkerMember*(this: StepVisual_MarkerSelect): handle[StepVisual_MarkerMember] {.
    noSideEffect, importcpp: "MarkerMember", header: "StepVisual_MarkerSelect.hxx".}