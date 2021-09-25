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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepElementMeasureOrUnspecifiedValue* {.
      importcpp: "StepElement_MeasureOrUnspecifiedValue",
      header: "StepElement_MeasureOrUnspecifiedValue.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepElementMeasureOrUnspecifiedValue*(): StepElementMeasureOrUnspecifiedValue {.
    constructor, importcpp: "StepElement_MeasureOrUnspecifiedValue(@)",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc caseNum*(this: StepElementMeasureOrUnspecifiedValue;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc caseMem*(this: StepElementMeasureOrUnspecifiedValue;
             ent: Handle[StepDataSelectMember]): int {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc newMember*(this: StepElementMeasureOrUnspecifiedValue): Handle[
    StepDataSelectMember] {.noSideEffect, importcpp: "NewMember",
                           header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc setContextDependentMeasure*(this: var StepElementMeasureOrUnspecifiedValue;
                                aVal: float) {.
    importcpp: "SetContextDependentMeasure",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc contextDependentMeasure*(this: StepElementMeasureOrUnspecifiedValue): float {.
    noSideEffect, importcpp: "ContextDependentMeasure",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc setUnspecifiedValue*(this: var StepElementMeasureOrUnspecifiedValue;
                         aVal: StepElementUnspecifiedValue) {.
    importcpp: "SetUnspecifiedValue",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
proc unspecifiedValue*(this: StepElementMeasureOrUnspecifiedValue): StepElementUnspecifiedValue {.
    noSideEffect, importcpp: "UnspecifiedValue",
    header: "StepElement_MeasureOrUnspecifiedValue.hxx".}
