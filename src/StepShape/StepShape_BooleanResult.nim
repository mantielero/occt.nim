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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_BooleanOperand"
discard "forward decl of StepShape_BooleanResult"
discard "forward decl of StepShape_BooleanResult"
type
  HandleC1C1* = Handle[StepShapeBooleanResult]
  StepShapeBooleanResult* {.importcpp: "StepShape_BooleanResult",
                           header: "StepShape_BooleanResult.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## BooleanResult


proc constructStepShapeBooleanResult*(): StepShapeBooleanResult {.constructor,
    importcpp: "StepShape_BooleanResult(@)", header: "StepShape_BooleanResult.hxx".}
proc init*(this: var StepShapeBooleanResult; aName: Handle[TCollectionHAsciiString];
          aOperator: StepShapeBooleanOperator;
          aFirstOperand: StepShapeBooleanOperand;
          aSecondOperand: StepShapeBooleanOperand) {.importcpp: "Init",
    header: "StepShape_BooleanResult.hxx".}
proc setOperator*(this: var StepShapeBooleanResult;
                 aOperator: StepShapeBooleanOperator) {.importcpp: "SetOperator",
    header: "StepShape_BooleanResult.hxx".}
proc operator*(this: StepShapeBooleanResult): StepShapeBooleanOperator {.
    noSideEffect, importcpp: "Operator", header: "StepShape_BooleanResult.hxx".}
proc setFirstOperand*(this: var StepShapeBooleanResult;
                     aFirstOperand: StepShapeBooleanOperand) {.
    importcpp: "SetFirstOperand", header: "StepShape_BooleanResult.hxx".}
proc firstOperand*(this: StepShapeBooleanResult): StepShapeBooleanOperand {.
    noSideEffect, importcpp: "FirstOperand", header: "StepShape_BooleanResult.hxx".}
proc setSecondOperand*(this: var StepShapeBooleanResult;
                      aSecondOperand: StepShapeBooleanOperand) {.
    importcpp: "SetSecondOperand", header: "StepShape_BooleanResult.hxx".}
proc secondOperand*(this: StepShapeBooleanResult): StepShapeBooleanOperand {.
    noSideEffect, importcpp: "SecondOperand", header: "StepShape_BooleanResult.hxx".}
type
  StepShapeBooleanResultbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_BooleanResult::get_type_name(@)",
                            header: "StepShape_BooleanResult.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_BooleanResult::get_type_descriptor(@)",
    header: "StepShape_BooleanResult.hxx".}
proc dynamicType*(this: StepShapeBooleanResult): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BooleanResult.hxx".}