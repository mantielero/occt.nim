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
  ../Standard/Standard_Integer, StepElement_EnumeratedCurveElementPurpose

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of TCollection_HAsciiString"
type
  StepElement_CurveElementPurpose* {.importcpp: "StepElement_CurveElementPurpose", header: "StepElement_CurveElementPurpose.hxx",
                                    bycopy.} = object of StepData_SelectType ## ! Empty
                                                                        ## constructor


proc constructStepElement_CurveElementPurpose*(): StepElement_CurveElementPurpose {.
    constructor, importcpp: "StepElement_CurveElementPurpose(@)",
    header: "StepElement_CurveElementPurpose.hxx".}
proc CaseNum*(this: StepElement_CurveElementPurpose;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_CurveElementPurpose.hxx".}
proc CaseMem*(this: StepElement_CurveElementPurpose;
             ent: handle[StepData_SelectMember]): Standard_Integer {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_CurveElementPurpose.hxx".}
proc NewMember*(this: StepElement_CurveElementPurpose): handle[
    StepData_SelectMember] {.noSideEffect, importcpp: "NewMember",
                            header: "StepElement_CurveElementPurpose.hxx".}
proc SetEnumeratedCurveElementPurpose*(this: var StepElement_CurveElementPurpose;
    aVal: StepElement_EnumeratedCurveElementPurpose) {.
    importcpp: "SetEnumeratedCurveElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc EnumeratedCurveElementPurpose*(this: StepElement_CurveElementPurpose): StepElement_EnumeratedCurveElementPurpose {.
    noSideEffect, importcpp: "EnumeratedCurveElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc SetApplicationDefinedElementPurpose*(
    this: var StepElement_CurveElementPurpose;
    aVal: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationDefinedElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc ApplicationDefinedElementPurpose*(this: StepElement_CurveElementPurpose): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "ApplicationDefinedElementPurpose",
                               header: "StepElement_CurveElementPurpose.hxx".}