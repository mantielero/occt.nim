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

discard "forward decl of StepElement_SurfaceSection"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepFEA_FeaSurfaceSectionGeometricRelationship"
discard "forward decl of StepFEA_FeaSurfaceSectionGeometricRelationship"
type
  HandleC1C1* = Handle[StepFEA_FeaSurfaceSectionGeometricRelationship]

## ! Representation of STEP entity FeaSurfaceSectionGeometricRelationship

type
  StepFEA_FeaSurfaceSectionGeometricRelationship* {.
      importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship",
      header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepFEA_FeaSurfaceSectionGeometricRelationship*(): StepFEA_FeaSurfaceSectionGeometricRelationship {.
    constructor, importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship(@)",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc init*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
          aSectionRef: Handle[StepElementSurfaceSection];
          aItem: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    importcpp: "Init",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc sectionRef*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): Handle[
    StepElementSurfaceSection] {.noSideEffect, importcpp: "SectionRef", header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc setSectionRef*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
                   sectionRef: Handle[StepElementSurfaceSection]) {.
    importcpp: "SetSectionRef",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc item*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): Handle[
    StepElementAnalysisItemWithinRepresentation] {.noSideEffect,
    importcpp: "Item",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc setItem*(this: var StepFEA_FeaSurfaceSectionGeometricRelationship;
             item: Handle[StepElementAnalysisItemWithinRepresentation]) {.
    importcpp: "SetItem",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
type
  StepFEA_FeaSurfaceSectionGeometricRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship::get_type_name(@)", header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_FeaSurfaceSectionGeometricRelationship::get_type_descriptor(@)",
    header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}
proc dynamicType*(this: StepFEA_FeaSurfaceSectionGeometricRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_FeaSurfaceSectionGeometricRelationship.hxx".}