##  Created on: 2002-12-10
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  StepElement_UnspecifiedValue

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepElement_MeasureOrUnspecifiedValue* {.
      importcpp: "StepElement_MeasureOrUnspecifiedValue",
      header: "StepElement_MeasureOrUnspecifiedValue.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepElement_MeasureOrUnspecifiedValue*(): StepElement_MeasureOrUnspecifiedValue {.
    constructor, importcpp: "StepElement_MeasureOrUnspecifiedValue(@)",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc CaseNum*(this: StepElement_MeasureOrUnspecifiedValue;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc CaseMem*(this: StepElement_MeasureOrUnspecifiedValue;
             ent: handle[StepData_SelectMember]): Standard_Integer {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc NewMember*(this: StepElement_MeasureOrUnspecifiedValue): handle[
    StepData_SelectMember] {.noSideEffect, importcpp: "NewMember",
                            header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc SetContextDependentMeasure*(this: var StepElement_MeasureOrUnspecifiedValue;
                                aVal: Standard_Real) {.
    importcpp: "SetContextDependentMeasure",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc ContextDependentMeasure*(this: StepElement_MeasureOrUnspecifiedValue): Standard_Real {.
    noSideEffect, importcpp: "ContextDependentMeasure",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc SetUnspecifiedValue*(this: var StepElement_MeasureOrUnspecifiedValue;
                         aVal: StepElement_UnspecifiedValue) {.
    importcpp: "SetUnspecifiedValue",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc UnspecifiedValue*(this: StepElement_MeasureOrUnspecifiedValue): StepElement_UnspecifiedValue {.
    noSideEffect, importcpp: "UnspecifiedValue",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}