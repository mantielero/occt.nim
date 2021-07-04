##  Created on: 2003-01-22
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepElement/StepElement_HArray1OfCurveElementSectionDefinition,
  StepFEA_CurveElementInterval

discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepFEA_CurveElementIntervalLinearlyVarying"
discard "forward decl of StepFEA_CurveElementIntervalLinearlyVarying"
type
  Handle_StepFEA_CurveElementIntervalLinearlyVarying* = handle[
      StepFEA_CurveElementIntervalLinearlyVarying]

## ! Representation of STEP entity CurveElementIntervalLinearlyVarying

type
  StepFEA_CurveElementIntervalLinearlyVarying* {.
      importcpp: "StepFEA_CurveElementIntervalLinearlyVarying",
      header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx", bycopy.} = object of StepFEA_CurveElementInterval ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepFEA_CurveElementIntervalLinearlyVarying*(): StepFEA_CurveElementIntervalLinearlyVarying {.
    constructor, importcpp: "StepFEA_CurveElementIntervalLinearlyVarying(@)",
    header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
proc Init*(this: var StepFEA_CurveElementIntervalLinearlyVarying;
    aCurveElementInterval_FinishPosition: handle[StepFEA_CurveElementLocation];
          aCurveElementInterval_EuAngles: handle[StepBasic_EulerAngles];
          aSections: handle[StepElement_HArray1OfCurveElementSectionDefinition]) {.
    importcpp: "Init", header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
proc Sections*(this: StepFEA_CurveElementIntervalLinearlyVarying): handle[
    StepElement_HArray1OfCurveElementSectionDefinition] {.noSideEffect,
    importcpp: "Sections",
    header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
proc SetSections*(this: var StepFEA_CurveElementIntervalLinearlyVarying; Sections: handle[
    StepElement_HArray1OfCurveElementSectionDefinition]) {.
    importcpp: "SetSections",
    header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
type
  StepFEA_CurveElementIntervalLinearlyVaryingbase_type* = StepFEA_CurveElementInterval

proc get_type_name*(): cstring {.importcpp: "StepFEA_CurveElementIntervalLinearlyVarying::get_type_name(@)", header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_CurveElementIntervalLinearlyVarying::get_type_descriptor(@)",
    header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}
proc DynamicType*(this: StepFEA_CurveElementIntervalLinearlyVarying): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_CurveElementIntervalLinearlyVarying.hxx".}