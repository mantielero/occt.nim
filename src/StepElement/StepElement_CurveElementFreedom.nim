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
discard "forward decl of TCollection_HAsciiString"
type
  StepElementCurveElementFreedom* {.importcpp: "StepElement_CurveElementFreedom", header: "StepElement_CurveElementFreedom.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepElementCurveElementFreedom; theSize: csize_t): pointer {.
    importcpp: "StepElement_CurveElementFreedom::operator new",
    header: "StepElement_CurveElementFreedom.hxx".}
proc `delete`*(this: var StepElementCurveElementFreedom; theAddress: pointer) {.
    importcpp: "StepElement_CurveElementFreedom::operator delete",
    header: "StepElement_CurveElementFreedom.hxx".}
proc `new[]`*(this: var StepElementCurveElementFreedom; theSize: csize_t): pointer {.
    importcpp: "StepElement_CurveElementFreedom::operator new[]",
    header: "StepElement_CurveElementFreedom.hxx".}
proc `delete[]`*(this: var StepElementCurveElementFreedom; theAddress: pointer) {.
    importcpp: "StepElement_CurveElementFreedom::operator delete[]",
    header: "StepElement_CurveElementFreedom.hxx".}
proc `new`*(this: var StepElementCurveElementFreedom; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepElement_CurveElementFreedom::operator new",
    header: "StepElement_CurveElementFreedom.hxx".}
proc `delete`*(this: var StepElementCurveElementFreedom; a2: pointer; a3: pointer) {.
    importcpp: "StepElement_CurveElementFreedom::operator delete",
    header: "StepElement_CurveElementFreedom.hxx".}
proc constructStepElementCurveElementFreedom*(): StepElementCurveElementFreedom {.
    constructor, importcpp: "StepElement_CurveElementFreedom(@)",
    header: "StepElement_CurveElementFreedom.hxx".}
proc caseNum*(this: StepElementCurveElementFreedom; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepElement_CurveElementFreedom.hxx".}
proc caseMem*(this: StepElementCurveElementFreedom;
             ent: Handle[StepDataSelectMember]): int {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_CurveElementFreedom.hxx".}
proc newMember*(this: StepElementCurveElementFreedom): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember",
    header: "StepElement_CurveElementFreedom.hxx".}
proc setEnumeratedCurveElementFreedom*(this: var StepElementCurveElementFreedom;
    aVal: StepElementEnumeratedCurveElementFreedom) {.
    importcpp: "SetEnumeratedCurveElementFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc enumeratedCurveElementFreedom*(this: StepElementCurveElementFreedom): StepElementEnumeratedCurveElementFreedom {.
    noSideEffect, importcpp: "EnumeratedCurveElementFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc setApplicationDefinedDegreeOfFreedom*(
    this: var StepElementCurveElementFreedom; aVal: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationDefinedDegreeOfFreedom",
    header: "StepElement_CurveElementFreedom.hxx".}
proc applicationDefinedDegreeOfFreedom*(this: StepElementCurveElementFreedom): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ApplicationDefinedDegreeOfFreedom",
                              header: "StepElement_CurveElementFreedom.hxx".}