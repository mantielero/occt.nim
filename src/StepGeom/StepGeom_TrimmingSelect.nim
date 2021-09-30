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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepGeom_CartesianPoint"
type
  StepGeomTrimmingSelect* {.importcpp: "StepGeom_TrimmingSelect",
                           header: "StepGeom_TrimmingSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## TrimmingSelect
                                                                                                   ## SelectType


proc constructStepGeomTrimmingSelect*(): StepGeomTrimmingSelect {.constructor,
    importcpp: "StepGeom_TrimmingSelect(@)", header: "StepGeom_TrimmingSelect.hxx".}
proc caseNum*(this: StepGeomTrimmingSelect; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_TrimmingSelect.hxx".}
proc newMember*(this: StepGeomTrimmingSelect): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepGeom_TrimmingSelect.hxx".}
proc caseMem*(this: StepGeomTrimmingSelect; ent: Handle[StepDataSelectMember]): cint {.
    noSideEffect, importcpp: "CaseMem", header: "StepGeom_TrimmingSelect.hxx".}
proc cartesianPoint*(this: StepGeomTrimmingSelect): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "CartesianPoint",
    header: "StepGeom_TrimmingSelect.hxx".}
proc setParameterValue*(this: var StepGeomTrimmingSelect; aParameterValue: cfloat) {.
    importcpp: "SetParameterValue", header: "StepGeom_TrimmingSelect.hxx".}
proc parameterValue*(this: StepGeomTrimmingSelect): cfloat {.noSideEffect,
    importcpp: "ParameterValue", header: "StepGeom_TrimmingSelect.hxx".}

























