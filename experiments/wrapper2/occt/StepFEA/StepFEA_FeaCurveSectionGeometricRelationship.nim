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

discard "forward decl of StepElement_CurveElementSectionDefinition"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_FeaCurveSectionGeometricRelationship"
discard "forward decl of StepFEA_FeaCurveSectionGeometricRelationship"
type
  HandleStepFEA_FeaCurveSectionGeometricRelationship* = Handle[
      StepFEA_FeaCurveSectionGeometricRelationship]

## ! Representation of STEP entity FeaCurveSectionGeometricRelationship

type
  StepFEA_FeaCurveSectionGeometricRelationship* {.
      importcpp: "StepFEA_FeaCurveSectionGeometricRelationship",
      header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepFEA_FeaCurveSectionGeometricRelationship*(): StepFEA_FeaCurveSectionGeometricRelationship {.
    constructor, importcpp: "StepFEA_FeaCurveSectionGeometricRelationship(@)",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc init*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
          aSectionRef: Handle[StepElementCurveElementSectionDefinition];
          aItem: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    importcpp: "Init", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc sectionRef*(this: StepFEA_FeaCurveSectionGeometricRelationship): Handle[
    StepElementCurveElementSectionDefinition] {.noSideEffect,
    importcpp: "SectionRef",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc setSectionRef*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
                   sectionRef: Handle[StepElementCurveElementSectionDefinition]) {.
    importcpp: "SetSectionRef",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc item*(this: StepFEA_FeaCurveSectionGeometricRelationship): Handle[
    StepElementAnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc setItem*(this: var StepFEA_FeaCurveSectionGeometricRelationship;
             item: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
type
  StepFEA_FeaCurveSectionGeometricRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaCurveSectionGeometricRelationship::get_type_name(@)", header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_FeaCurveSectionGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
proc dynamicType*(this: StepFEA_FeaCurveSectionGeometricRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_FeaCurveSectionGeometricRelationship.hxx".}
