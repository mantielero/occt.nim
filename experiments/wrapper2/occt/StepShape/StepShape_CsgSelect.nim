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

discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_CsgPrimitive"
type
  StepShape_CsgSelect* {.importcpp: "StepShape_CsgSelect",
                        header: "StepShape_CsgSelect.hxx", bycopy.} = object ## ! Returns a
                                                                        ## CsgSelect
                                                                        ## SelectType


proc constructStepShape_CsgSelect*(): StepShape_CsgSelect {.constructor,
    importcpp: "StepShape_CsgSelect(@)", header: "StepShape_CsgSelect.hxx".}
proc SetTypeOfContent*(this: var StepShape_CsgSelect;
                      aTypeOfContent: Standard_Integer) {.
    importcpp: "SetTypeOfContent", header: "StepShape_CsgSelect.hxx".}
proc TypeOfContent*(this: StepShape_CsgSelect): Standard_Integer {.noSideEffect,
    importcpp: "TypeOfContent", header: "StepShape_CsgSelect.hxx".}
proc BooleanResult*(this: StepShape_CsgSelect): handle[StepShape_BooleanResult] {.
    noSideEffect, importcpp: "BooleanResult", header: "StepShape_CsgSelect.hxx".}
proc SetBooleanResult*(this: var StepShape_CsgSelect;
                      aBooleanResult: handle[StepShape_BooleanResult]) {.
    importcpp: "SetBooleanResult", header: "StepShape_CsgSelect.hxx".}
proc CsgPrimitive*(this: StepShape_CsgSelect): StepShape_CsgPrimitive {.
    noSideEffect, importcpp: "CsgPrimitive", header: "StepShape_CsgSelect.hxx".}
proc SetCsgPrimitive*(this: var StepShape_CsgSelect;
                     aCsgPrimitive: StepShape_CsgPrimitive) {.
    importcpp: "SetCsgPrimitive", header: "StepShape_CsgSelect.hxx".}