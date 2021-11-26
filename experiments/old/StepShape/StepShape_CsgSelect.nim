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

discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_CsgPrimitive"
type
  StepShapeCsgSelect* {.importcpp: "StepShape_CsgSelect",
                       header: "StepShape_CsgSelect.hxx", bycopy.} = object


proc `new`*(this: var StepShapeCsgSelect; theSize: csize_t): pointer {.
    importcpp: "StepShape_CsgSelect::operator new",
    header: "StepShape_CsgSelect.hxx".}
proc `delete`*(this: var StepShapeCsgSelect; theAddress: pointer) {.
    importcpp: "StepShape_CsgSelect::operator delete",
    header: "StepShape_CsgSelect.hxx".}
proc `new[]`*(this: var StepShapeCsgSelect; theSize: csize_t): pointer {.
    importcpp: "StepShape_CsgSelect::operator new[]",
    header: "StepShape_CsgSelect.hxx".}
proc `delete[]`*(this: var StepShapeCsgSelect; theAddress: pointer) {.
    importcpp: "StepShape_CsgSelect::operator delete[]",
    header: "StepShape_CsgSelect.hxx".}
proc `new`*(this: var StepShapeCsgSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepShape_CsgSelect::operator new",
    header: "StepShape_CsgSelect.hxx".}
proc `delete`*(this: var StepShapeCsgSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepShape_CsgSelect::operator delete",
    header: "StepShape_CsgSelect.hxx".}
proc constructStepShapeCsgSelect*(): StepShapeCsgSelect {.constructor,
    importcpp: "StepShape_CsgSelect(@)", header: "StepShape_CsgSelect.hxx".}
proc setTypeOfContent*(this: var StepShapeCsgSelect; aTypeOfContent: int) {.
    importcpp: "SetTypeOfContent", header: "StepShape_CsgSelect.hxx".}
proc typeOfContent*(this: StepShapeCsgSelect): int {.noSideEffect,
    importcpp: "TypeOfContent", header: "StepShape_CsgSelect.hxx".}
proc booleanResult*(this: StepShapeCsgSelect): Handle[StepShapeBooleanResult] {.
    noSideEffect, importcpp: "BooleanResult", header: "StepShape_CsgSelect.hxx".}
proc setBooleanResult*(this: var StepShapeCsgSelect;
                      aBooleanResult: Handle[StepShapeBooleanResult]) {.
    importcpp: "SetBooleanResult", header: "StepShape_CsgSelect.hxx".}
proc csgPrimitive*(this: StepShapeCsgSelect): StepShapeCsgPrimitive {.noSideEffect,
    importcpp: "CsgPrimitive", header: "StepShape_CsgSelect.hxx".}
proc setCsgPrimitive*(this: var StepShapeCsgSelect;
                     aCsgPrimitive: StepShapeCsgPrimitive) {.
    importcpp: "SetCsgPrimitive", header: "StepShape_CsgSelect.hxx".}