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

discard "forward decl of StepShape_SolidModel"
discard "forward decl of StepShape_HalfSpaceSolid"
discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_CsgPrimitive"
type
  StepShapeBooleanOperand* {.importcpp: "StepShape_BooleanOperand",
                            header: "StepShape_BooleanOperand.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## BooleanOperand
                                                                                 ## SelectType


proc constructStepShapeBooleanOperand*(): StepShapeBooleanOperand {.constructor,
    importcpp: "StepShape_BooleanOperand(@)",
    header: "StepShape_BooleanOperand.hxx".}
proc setTypeOfContent*(this: var StepShapeBooleanOperand; aTypeOfContent: cint) {.
    importcpp: "SetTypeOfContent", header: "StepShape_BooleanOperand.hxx".}
proc typeOfContent*(this: StepShapeBooleanOperand): cint {.noSideEffect,
    importcpp: "TypeOfContent", header: "StepShape_BooleanOperand.hxx".}
proc solidModel*(this: StepShapeBooleanOperand): Handle[StepShapeSolidModel] {.
    noSideEffect, importcpp: "SolidModel", header: "StepShape_BooleanOperand.hxx".}
proc setSolidModel*(this: var StepShapeBooleanOperand;
                   aSolidModel: Handle[StepShapeSolidModel]) {.
    importcpp: "SetSolidModel", header: "StepShape_BooleanOperand.hxx".}
proc halfSpaceSolid*(this: StepShapeBooleanOperand): Handle[StepShapeHalfSpaceSolid] {.
    noSideEffect, importcpp: "HalfSpaceSolid",
    header: "StepShape_BooleanOperand.hxx".}
proc setHalfSpaceSolid*(this: var StepShapeBooleanOperand;
                       aHalfSpaceSolid: Handle[StepShapeHalfSpaceSolid]) {.
    importcpp: "SetHalfSpaceSolid", header: "StepShape_BooleanOperand.hxx".}
proc csgPrimitive*(this: StepShapeBooleanOperand): StepShapeCsgPrimitive {.
    noSideEffect, importcpp: "CsgPrimitive", header: "StepShape_BooleanOperand.hxx".}
proc setCsgPrimitive*(this: var StepShapeBooleanOperand;
                     aCsgPrimitive: StepShapeCsgPrimitive) {.
    importcpp: "SetCsgPrimitive", header: "StepShape_BooleanOperand.hxx".}
proc booleanResult*(this: StepShapeBooleanOperand): Handle[StepShapeBooleanResult] {.
    noSideEffect, importcpp: "BooleanResult",
    header: "StepShape_BooleanOperand.hxx".}
proc setBooleanResult*(this: var StepShapeBooleanOperand;
                      aBooleanResult: Handle[StepShapeBooleanResult]) {.
    importcpp: "SetBooleanResult", header: "StepShape_BooleanOperand.hxx".}

























