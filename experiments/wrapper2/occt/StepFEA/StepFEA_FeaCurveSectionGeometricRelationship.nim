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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepElement_CurveElementSectionDefinition"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_FeaCurveSectionGeometricRelationship"
discard "forward decl of StepFEA_FeaCurveSectionGeometricRelationship"
type
  Handle_StepFEA_FeaCurveSectionGeometricRelationship* = handle[
      StepFEA_FeaCurveSectionGeometricRelationship]

## ! Representation of STEP entity FeaCurveSectionGeometricRelationship

type
  StepFEA_FeaCurveSectionGeometricRelationship* {.
      importcpp: "StepFEA_FeaCurveSectionGeometricRelationship",
      header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepFEA_FeaCurveSectionGeometricRelationship*(): StepFEA_FeaCurveSectionGeometricRelationship {.
    constructor, importcpp: "StepFEA_FeaCurveSectionGeometricRelationship(@)",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc Init*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
          aSectionRef: handle[StepElement_CurveElementSectionDefinition];
          aItem: handle[StepElement_AnalysisItemWithinRepresentation]) {.
    importcpp: "Init", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc SectionRef*(this: StepFEA_FeaCurveSectionGeometricRelationship): handle[
    StepElement_CurveElementSectionDefinition] {.noSideEffect,
    importcpp: "SectionRef",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc SetSectionRef*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
    SectionRef: handle[StepElement_CurveElementSectionDefinition]) {.
    importcpp: "SetSectionRef",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc Item*(this: StepFEA_FeaCurveSectionGeometricRelationship): handle[
    StepElement_AnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc SetItem*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
             Item: handle[StepElement_AnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
type
  StepFEA_FeaCurveSectionGeometricRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaCurveSectionGeometricRelationship::get_type_name(@)", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaCurveSectionGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc DynamicType*(this: StepFEA_FeaCurveSectionGeometricRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}