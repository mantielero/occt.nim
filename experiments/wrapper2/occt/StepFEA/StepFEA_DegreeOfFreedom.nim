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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer, StepFEA_EnumeratedDegreeOfFreedom

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of TCollection_HAsciiString"
type
  StepFEA_DegreeOfFreedom* {.importcpp: "StepFEA_DegreeOfFreedom",
                            header: "StepFEA_DegreeOfFreedom.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepFEA_DegreeOfFreedom*(): StepFEA_DegreeOfFreedom {.constructor,
    importcpp: "StepFEA_DegreeOfFreedom(@)", header: "StepFEA_DegreeOfFreedom.hxx".}
proc CaseNum*(this: StepFEA_DegreeOfFreedom; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_DegreeOfFreedom.hxx".}
proc CaseMem*(this: StepFEA_DegreeOfFreedom; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepFEA_DegreeOfFreedom.hxx".}
proc NewMember*(this: StepFEA_DegreeOfFreedom): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepFEA_DegreeOfFreedom.hxx".}
proc SetEnumeratedDegreeOfFreedom*(this: var StepFEA_DegreeOfFreedom;
                                  aVal: StepFEA_EnumeratedDegreeOfFreedom) {.
    importcpp: "SetEnumeratedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc EnumeratedDegreeOfFreedom*(this: StepFEA_DegreeOfFreedom): StepFEA_EnumeratedDegreeOfFreedom {.
    noSideEffect, importcpp: "EnumeratedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc SetApplicationDefinedDegreeOfFreedom*(this: var StepFEA_DegreeOfFreedom;
    aVal: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationDefinedDegreeOfFreedom",
    header: "StepFEA_DegreeOfFreedom.hxx".}
proc ApplicationDefinedDegreeOfFreedom*(this: StepFEA_DegreeOfFreedom): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "ApplicationDefinedDegreeOfFreedom",
                               header: "StepFEA_DegreeOfFreedom.hxx".}