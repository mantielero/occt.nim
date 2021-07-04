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
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepBasic_SizeSelect* {.importcpp: "StepBasic_SizeSelect",
                         header: "StepBasic_SizeSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## a
                                                                                               ## SizeSelect
                                                                                               ## SelectType


proc constructStepBasic_SizeSelect*(): StepBasic_SizeSelect {.constructor,
    importcpp: "StepBasic_SizeSelect(@)", header: "StepBasic_SizeSelect.hxx".}
proc CaseNum*(this: StepBasic_SizeSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_SizeSelect.hxx".}
proc NewMember*(this: StepBasic_SizeSelect): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepBasic_SizeSelect.hxx".}
proc CaseMem*(this: StepBasic_SizeSelect; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepBasic_SizeSelect.hxx".}
proc SetRealValue*(this: var StepBasic_SizeSelect; aReal: Standard_Real) {.
    importcpp: "SetRealValue", header: "StepBasic_SizeSelect.hxx".}
proc RealValue*(this: StepBasic_SizeSelect): Standard_Real {.noSideEffect,
    importcpp: "RealValue", header: "StepBasic_SizeSelect.hxx".}