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
discard "forward decl of StepGeom_Vector"
discard "forward decl of StepGeom_Direction"
type
  StepGeom_VectorOrDirection* {.importcpp: "StepGeom_VectorOrDirection",
                               header: "StepGeom_VectorOrDirection.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## VectorOrDirection
                                                                                                           ## SelectType


proc constructStepGeom_VectorOrDirection*(): StepGeom_VectorOrDirection {.
    constructor, importcpp: "StepGeom_VectorOrDirection(@)",
    header: "StepGeom_VectorOrDirection.hxx".}
proc CaseNum*(this: StepGeom_VectorOrDirection; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_VectorOrDirection.hxx".}
proc Vector*(this: StepGeom_VectorOrDirection): handle[StepGeom_Vector] {.
    noSideEffect, importcpp: "Vector", header: "StepGeom_VectorOrDirection.hxx".}
proc Direction*(this: StepGeom_VectorOrDirection): handle[StepGeom_Direction] {.
    noSideEffect, importcpp: "Direction", header: "StepGeom_VectorOrDirection.hxx".}