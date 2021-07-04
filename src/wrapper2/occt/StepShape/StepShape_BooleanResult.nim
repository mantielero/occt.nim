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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_BooleanOperator,
  StepShape_BooleanOperand, ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_BooleanOperand"
discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_BooleanResult"
type
  Handle_StepShape_BooleanResult* = handle[StepShape_BooleanResult]
  StepShape_BooleanResult* {.importcpp: "StepShape_BooleanResult",
                            header: "StepShape_BooleanResult.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                      ## !
                                                                                                                      ## Returns
                                                                                                                      ## a
                                                                                                                      ## BooleanResult


proc constructStepShape_BooleanResult*(): StepShape_BooleanResult {.constructor,
    importcpp: "StepShape_BooleanResult(@)", header: "StepShape_BooleanResult.hxx".}
proc Init*(this: var StepShape_BooleanResult;
          aName: handle[TCollection_HAsciiString];
          aOperator: StepShape_BooleanOperator;
          aFirstOperand: StepShape_BooleanOperand;
          aSecondOperand: StepShape_BooleanOperand) {.importcpp: "Init",
    header: "StepShape_BooleanResult.hxx".}
proc SetOperator*(this: var StepShape_BooleanResult;
                 aOperator: StepShape_BooleanOperator) {.importcpp: "SetOperator",
    header: "StepShape_BooleanResult.hxx".}
proc Operator*(this: StepShape_BooleanResult): StepShape_BooleanOperator {.
    noSideEffect, importcpp: "Operator", header: "StepShape_BooleanResult.hxx".}
proc SetFirstOperand*(this: var StepShape_BooleanResult;
                     aFirstOperand: StepShape_BooleanOperand) {.
    importcpp: "SetFirstOperand", header: "StepShape_BooleanResult.hxx".}
proc FirstOperand*(this: StepShape_BooleanResult): StepShape_BooleanOperand {.
    noSideEffect, importcpp: "FirstOperand", header: "StepShape_BooleanResult.hxx".}
proc SetSecondOperand*(this: var StepShape_BooleanResult;
                      aSecondOperand: StepShape_BooleanOperand) {.
    importcpp: "SetSecondOperand", header: "StepShape_BooleanResult.hxx".}
proc SecondOperand*(this: StepShape_BooleanResult): StepShape_BooleanOperand {.
    noSideEffect, importcpp: "SecondOperand", header: "StepShape_BooleanResult.hxx".}
type
  StepShape_BooleanResultbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_BooleanResult::get_type_name(@)",
                              header: "StepShape_BooleanResult.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_BooleanResult::get_type_descriptor(@)",
    header: "StepShape_BooleanResult.hxx".}
proc DynamicType*(this: StepShape_BooleanResult): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BooleanResult.hxx".}