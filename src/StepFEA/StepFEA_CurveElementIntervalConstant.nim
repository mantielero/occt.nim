##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepElement_CurveElementSectionDefinition"
discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepFEA_CurveElementIntervalConstant"
discard "forward decl of StepFEA_CurveElementIntervalConstant"
type
  HandleC1C1* = Handle[StepFEA_CurveElementIntervalConstant]

## ! Representation of STEP entity CurveElementIntervalConstant

type
  StepFEA_CurveElementIntervalConstant* {.
      importcpp: "StepFEA_CurveElementIntervalConstant",
      header: "StepFEA_CurveElementIntervalConstant.hxx", bycopy.} = object of StepFEA_CurveElementInterval ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepFEA_CurveElementIntervalConstant*(): StepFEA_CurveElementIntervalConstant {.
    constructor, importcpp: "StepFEA_CurveElementIntervalConstant(@)",
    header: "StepFEA_CurveElementIntervalConstant.hxx".}
proc init*(this: var StepFEA_CurveElementIntervalConstant;
    aCurveElementIntervalFinishPosition: Handle[StepFEA_CurveElementLocation];
          aCurveElementIntervalEuAngles: Handle[StepBasicEulerAngles];
          aSection: Handle[StepElementCurveElementSectionDefinition]) {.
    importcpp: "Init", header: "StepFEA_CurveElementIntervalConstant.hxx".}
proc section*(this: StepFEA_CurveElementIntervalConstant): Handle[
    StepElementCurveElementSectionDefinition] {.noSideEffect,
    importcpp: "Section", header: "StepFEA_CurveElementIntervalConstant.hxx".}
proc setSection*(this: var StepFEA_CurveElementIntervalConstant;
                section: Handle[StepElementCurveElementSectionDefinition]) {.
    importcpp: "SetSection", header: "StepFEA_CurveElementIntervalConstant.hxx".}
type
  StepFEA_CurveElementIntervalConstantbaseType* = StepFEA_CurveElementInterval

proc getTypeName*(): cstring {.importcpp: "StepFEA_CurveElementIntervalConstant::get_type_name(@)",
                            header: "StepFEA_CurveElementIntervalConstant.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_CurveElementIntervalConstant::get_type_descriptor(@)",
    header: "StepFEA_CurveElementIntervalConstant.hxx".}
proc dynamicType*(this: StepFEA_CurveElementIntervalConstant): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementIntervalConstant.hxx".}

























