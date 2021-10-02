##  Created on: 2002-12-14
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
  StepFEA_DegreeOfFreedom* {.importcpp: "StepFEA_DegreeOfFreedom",
                            header: "StepFEA_DegreeOfFreedom.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepFEA_DegreeOfFreedom; theSize: csize_t): pointer {.
    importcpp: "StepFEA_DegreeOfFreedom::operator new",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc `delete`*(this: var StepFEA_DegreeOfFreedom; theAddress: pointer) {.
    importcpp: "StepFEA_DegreeOfFreedom::operator delete",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc `new[]`*(this: var StepFEA_DegreeOfFreedom; theSize: csize_t): pointer {.
    importcpp: "StepFEA_DegreeOfFreedom::operator new[]",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc `delete[]`*(this: var StepFEA_DegreeOfFreedom; theAddress: pointer) {.
    importcpp: "StepFEA_DegreeOfFreedom::operator delete[]",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc `new`*(this: var StepFEA_DegreeOfFreedom; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepFEA_DegreeOfFreedom::operator new",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc `delete`*(this: var StepFEA_DegreeOfFreedom; a2: pointer; a3: pointer) {.
    importcpp: "StepFEA_DegreeOfFreedom::operator delete",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc constructStepFEA_DegreeOfFreedom*(): StepFEA_DegreeOfFreedom {.constructor,
    importcpp: "StepFEA_DegreeOfFreedom(@)", header: "StepFEA_DegreeOfFreedom.hxx".}
proc caseNum*(this: StepFEA_DegreeOfFreedom; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_DegreeOfFreedom.hxx".}
proc caseMem*(this: StepFEA_DegreeOfFreedom; ent: Handle[StepDataSelectMember]): int {.
    noSideEffect, importcpp: "CaseMem", header: "StepFEA_DegreeOfFreedom.hxx".}
proc newMember*(this: StepFEA_DegreeOfFreedom): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepFEA_DegreeOfFreedom.hxx".}
proc setEnumeratedDegreeOfFreedom*(this: var StepFEA_DegreeOfFreedom;
                                  aVal: StepFEA_EnumeratedDegreeOfFreedom) {.
    importcpp: "SetEnumeratedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc enumeratedDegreeOfFreedom*(this: StepFEA_DegreeOfFreedom): StepFEA_EnumeratedDegreeOfFreedom {.
    noSideEffect, importcpp: "EnumeratedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc setApplicationDefinedDegreeOfFreedom*(this: var StepFEA_DegreeOfFreedom;
    aVal: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationDefinedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc applicationDefinedDegreeOfFreedom*(this: StepFEA_DegreeOfFreedom): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ApplicationDefinedDegreeOfFreedom",
                              header: "StepFEA_DegreeOfFreedom.hxx".}