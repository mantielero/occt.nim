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
  ../Standard/Standard_Integer, StepElement_EnumeratedCurveElementFreedom

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of TCollection_HAsciiString"
type
  StepElement_CurveElementFreedom* {.importcpp: "StepElement_CurveElementFreedom", header: "StepElement_CurveElementFreedom.hxx",
                                    bycopy.} = object of StepData_SelectType ## ! Empty
                                                                        ## constructor


proc constructStepElement_CurveElementFreedom*(): StepElement_CurveElementFreedom {.
    constructor, importcpp: "StepElement_CurveElementFreedom(@)",
    header: "StepElement_CurveElementFreedom.hxx".}
proc CaseNum*(this: StepElement_CurveElementFreedom;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_CurveElementFreedom.hxx".}
proc CaseMem*(this: StepElement_CurveElementFreedom;
             ent: handle[StepData_SelectMember]): Standard_Integer {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_CurveElementFreedom.hxx".}
proc NewMember*(this: StepElement_CurveElementFreedom): handle[
    StepData_SelectMember] {.noSideEffect, importcpp: "NewMember",
                            header: "StepElement_CurveElementFreedom.hxx".}
proc SetEnumeratedCurveElementFreedom*(this: var StepElement_CurveElementFreedom;
    aVal: StepElement_EnumeratedCurveElementFreedom) {.
    importcpp: "SetEnumeratedCurveElementFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc EnumeratedCurveElementFreedom*(this: StepElement_CurveElementFreedom): StepElement_EnumeratedCurveElementFreedom {.
    noSideEffect, importcpp: "EnumeratedCurveElementFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc SetApplicationDefinedDegreeOfFreedom*(
    this: var StepElement_CurveElementFreedom;
    aVal: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationDefinedDegreeOfFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc ApplicationDefinedDegreeOfFreedom*(this: StepElement_CurveElementFreedom): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "ApplicationDefinedDegreeOfFreedom",
                               header: "StepElement_CurveElementFreedom.hxx".}