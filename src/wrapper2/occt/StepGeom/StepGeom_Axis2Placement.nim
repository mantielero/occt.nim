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
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Axis2Placement2d"
discard "forward decl of StepGeom_Axis2Placement3d"
type
  StepGeom_Axis2Placement* {.importcpp: "StepGeom_Axis2Placement",
                            header: "StepGeom_Axis2Placement.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## Axis2Placement
                                                                                                     ## SelectType


proc constructStepGeom_Axis2Placement*(): StepGeom_Axis2Placement {.constructor,
    importcpp: "StepGeom_Axis2Placement(@)", header: "StepGeom_Axis2Placement.hxx".}
proc CaseNum*(this: StepGeom_Axis2Placement; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_Axis2Placement.hxx".}
proc Axis2Placement2d*(this: StepGeom_Axis2Placement): handle[
    StepGeom_Axis2Placement2d] {.noSideEffect, importcpp: "Axis2Placement2d",
                                header: "StepGeom_Axis2Placement.hxx".}
proc Axis2Placement3d*(this: StepGeom_Axis2Placement): handle[
    StepGeom_Axis2Placement3d] {.noSideEffect, importcpp: "Axis2Placement3d",
                                header: "StepGeom_Axis2Placement.hxx".}