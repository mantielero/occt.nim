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
discard "forward decl of StepGeom_CartesianPoint"
type
  StepGeom_TrimmingSelect* {.importcpp: "StepGeom_TrimmingSelect",
                            header: "StepGeom_TrimmingSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## TrimmingSelect
                                                                                                     ## SelectType


proc constructStepGeom_TrimmingSelect*(): StepGeom_TrimmingSelect {.constructor,
    importcpp: "StepGeom_TrimmingSelect(@)", header: "StepGeom_TrimmingSelect.hxx".}
proc CaseNum*(this: StepGeom_TrimmingSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_TrimmingSelect.hxx".}
proc NewMember*(this: StepGeom_TrimmingSelect): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepGeom_TrimmingSelect.hxx".}
proc CaseMem*(this: StepGeom_TrimmingSelect; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepGeom_TrimmingSelect.hxx".}
proc CartesianPoint*(this: StepGeom_TrimmingSelect): handle[StepGeom_CartesianPoint] {.
    noSideEffect, importcpp: "CartesianPoint",
    header: "StepGeom_TrimmingSelect.hxx".}
proc SetParameterValue*(this: var StepGeom_TrimmingSelect;
                       aParameterValue: Standard_Real) {.
    importcpp: "SetParameterValue", header: "StepGeom_TrimmingSelect.hxx".}
proc ParameterValue*(this: StepGeom_TrimmingSelect): Standard_Real {.noSideEffect,
    importcpp: "ParameterValue", header: "StepGeom_TrimmingSelect.hxx".}