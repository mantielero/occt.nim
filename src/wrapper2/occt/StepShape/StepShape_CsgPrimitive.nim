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
discard "forward decl of StepShape_Sphere"
discard "forward decl of StepShape_Block"
discard "forward decl of StepShape_RightAngularWedge"
discard "forward decl of StepShape_Torus"
discard "forward decl of StepShape_RightCircularCone"
discard "forward decl of StepShape_RightCircularCylinder"
type
  StepShape_CsgPrimitive* {.importcpp: "StepShape_CsgPrimitive",
                           header: "StepShape_CsgPrimitive.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## CsgPrimitive
                                                                                                   ## SelectType


proc constructStepShape_CsgPrimitive*(): StepShape_CsgPrimitive {.constructor,
    importcpp: "StepShape_CsgPrimitive(@)", header: "StepShape_CsgPrimitive.hxx".}
proc CaseNum*(this: StepShape_CsgPrimitive; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_CsgPrimitive.hxx".}
proc Sphere*(this: StepShape_CsgPrimitive): handle[StepShape_Sphere] {.noSideEffect,
    importcpp: "Sphere", header: "StepShape_CsgPrimitive.hxx".}
proc Block*(this: StepShape_CsgPrimitive): handle[StepShape_Block] {.noSideEffect,
    importcpp: "Block", header: "StepShape_CsgPrimitive.hxx".}
proc RightAngularWedge*(this: StepShape_CsgPrimitive): handle[
    StepShape_RightAngularWedge] {.noSideEffect, importcpp: "RightAngularWedge",
                                  header: "StepShape_CsgPrimitive.hxx".}
proc Torus*(this: StepShape_CsgPrimitive): handle[StepShape_Torus] {.noSideEffect,
    importcpp: "Torus", header: "StepShape_CsgPrimitive.hxx".}
proc RightCircularCone*(this: StepShape_CsgPrimitive): handle[
    StepShape_RightCircularCone] {.noSideEffect, importcpp: "RightCircularCone",
                                  header: "StepShape_CsgPrimitive.hxx".}
proc RightCircularCylinder*(this: StepShape_CsgPrimitive): handle[
    StepShape_RightCircularCylinder] {.noSideEffect,
                                      importcpp: "RightCircularCylinder",
                                      header: "StepShape_CsgPrimitive.hxx".}