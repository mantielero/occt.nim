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

discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_FeaSurfaceSectionGeometricRelationship"
discard "forward decl of StepFEA_FeaSurfaceSectionGeometricRelationship"
type
  Handle_StepFEA_FeaSurfaceSectionGeometricRelationship* = handle[
      StepFEA_FeaSurfaceSectionGeometricRelationship]

## ! Representation of STEP entity FeaSurfaceSectionGeometricRelationship

type
  StepFEA_FeaSurfaceSectionGeometricRelationship* {.
      importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship",
      header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepFEA_FeaSurfaceSectionGeometricRelationship*(): StepFEA_FeaSurfaceSectionGeometricRelationship {.
    constructor, importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship(@)",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc Init*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
          aSectionRef: handle[StepElement_SurfaceSection];
          aItem: handle[StepElement_AnalysisItemWithinRepresentation]) {.
    importcpp: "Init",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc SectionRef*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): handle[
    StepElement_SurfaceSection] {.noSideEffect, importcpp: "SectionRef", header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc SetSectionRef*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
                   SectionRef: handle[StepElement_SurfaceSection]) {.
    importcpp: "SetSectionRef",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc Item*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): handle[
    StepElement_AnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc SetItem*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
             Item: handle[StepElement_AnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
type
  StepFEA_FeaSurfaceSectionGeometricRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship::get_type_name(@)", header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc DynamicType*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}