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
  StepElementCurveElementPurpose* {.importcpp: "StepElement_CurveElementPurpose", header: "StepElement_CurveElementPurpose.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepElementCurveElementPurpose; theSize: csize_t): pointer {.
    importcpp: "StepElement_CurveElementPurpose::operator new",
    header: "StepElement_CurveElementPurpose.hxx".}
proc `delete`*(this: var StepElementCurveElementPurpose; theAddress: pointer) {.
    importcpp: "StepElement_CurveElementPurpose::operator delete",
    header: "StepElement_CurveElementPurpose.hxx".}
proc `new[]`*(this: var StepElementCurveElementPurpose; theSize: csize_t): pointer {.
    importcpp: "StepElement_CurveElementPurpose::operator new[]",
    header: "StepElement_CurveElementPurpose.hxx".}
proc `delete[]`*(this: var StepElementCurveElementPurpose; theAddress: pointer) {.
    importcpp: "StepElement_CurveElementPurpose::operator delete[]",
    header: "StepElement_CurveElementPurpose.hxx".}
proc `new`*(this: var StepElementCurveElementPurpose; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepElement_CurveElementPurpose::operator new",
    header: "StepElement_CurveElementPurpose.hxx".}
proc `delete`*(this: var StepElementCurveElementPurpose; a2: pointer; a3: pointer) {.
    importcpp: "StepElement_CurveElementPurpose::operator delete",
    header: "StepElement_CurveElementPurpose.hxx".}
proc constructStepElementCurveElementPurpose*(): StepElementCurveElementPurpose {.
    constructor, importcpp: "StepElement_CurveElementPurpose(@)",
    header: "StepElement_CurveElementPurpose.hxx".}
proc caseNum*(this: StepElementCurveElementPurpose; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepElement_CurveElementPurpose.hxx".}
proc caseMem*(this: StepElementCurveElementPurpose;
             ent: Handle[StepDataSelectMember]): int {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_CurveElementPurpose.hxx".}
proc newMember*(this: StepElementCurveElementPurpose): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember",
    header: "StepElement_CurveElementPurpose.hxx".}
proc setEnumeratedCurveElementPurpose*(this: var StepElementCurveElementPurpose;
    aVal: StepElementEnumeratedCurveElementPurpose) {.
    importcpp: "SetEnumeratedCurveElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc enumeratedCurveElementPurpose*(this: StepElementCurveElementPurpose): StepElementEnumeratedCurveElementPurpose {.
    noSideEffect, importcpp: "EnumeratedCurveElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc setApplicationDefinedElementPurpose*(
    this: var StepElementCurveElementPurpose; aVal: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationDefinedElementPurpose",
    header: "StepElement_CurveElementPurpose.hxx".}
proc applicationDefinedElementPurpose*(this: StepElementCurveElementPurpose): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ApplicationDefinedElementPurpose",
                              header: "StepElement_CurveElementPurpose.hxx".}