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
  ../Standard/Standard_Handle, StepShape_CsgPrimitive,
  ../Standard/Standard_Integer

discard "forward decl of StepShape_SolidModel"
discard "forward decl of StepShape_HalfSpaceSolid"
discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_CsgPrimitive"
type
  StepShape_BooleanOperand* {.importcpp: "StepShape_BooleanOperand",
                             header: "StepShape_BooleanOperand.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## BooleanOperand
                                                                                  ## SelectType


proc constructStepShape_BooleanOperand*(): StepShape_BooleanOperand {.constructor,
    importcpp: "StepShape_BooleanOperand(@)",
    header: "StepShape_BooleanOperand.hxx".}
proc SetTypeOfContent*(this: var StepShape_BooleanOperand;
                      aTypeOfContent: Standard_Integer) {.
    importcpp: "SetTypeOfContent", header: "StepShape_BooleanOperand.hxx".}
proc TypeOfContent*(this: StepShape_BooleanOperand): Standard_Integer {.
    noSideEffect, importcpp: "TypeOfContent",
    header: "StepShape_BooleanOperand.hxx".}
proc SolidModel*(this: StepShape_BooleanOperand): handle[StepShape_SolidModel] {.
    noSideEffect, importcpp: "SolidModel", header: "StepShape_BooleanOperand.hxx".}
proc SetSolidModel*(this: var StepShape_BooleanOperand;
                   aSolidModel: handle[StepShape_SolidModel]) {.
    importcpp: "SetSolidModel", header: "StepShape_BooleanOperand.hxx".}
proc HalfSpaceSolid*(this: StepShape_BooleanOperand): handle[
    StepShape_HalfSpaceSolid] {.noSideEffect, importcpp: "HalfSpaceSolid",
                               header: "StepShape_BooleanOperand.hxx".}
proc SetHalfSpaceSolid*(this: var StepShape_BooleanOperand;
                       aHalfSpaceSolid: handle[StepShape_HalfSpaceSolid]) {.
    importcpp: "SetHalfSpaceSolid", header: "StepShape_BooleanOperand.hxx".}
proc CsgPrimitive*(this: StepShape_BooleanOperand): StepShape_CsgPrimitive {.
    noSideEffect, importcpp: "CsgPrimitive", header: "StepShape_BooleanOperand.hxx".}
proc SetCsgPrimitive*(this: var StepShape_BooleanOperand;
                     aCsgPrimitive: StepShape_CsgPrimitive) {.
    importcpp: "SetCsgPrimitive", header: "StepShape_BooleanOperand.hxx".}
proc BooleanResult*(this: StepShape_BooleanOperand): handle[StepShape_BooleanResult] {.
    noSideEffect, importcpp: "BooleanResult",
    header: "StepShape_BooleanOperand.hxx".}
proc SetBooleanResult*(this: var StepShape_BooleanOperand;
                      aBooleanResult: handle[StepShape_BooleanResult]) {.
    importcpp: "SetBooleanResult", header: "StepShape_BooleanOperand.hxx".}