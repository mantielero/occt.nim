##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
discard "forward decl of StepAP214_AppliedDateAssignment"
discard "forward decl of StepAP214_AppliedDocumentReference"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
discard "forward decl of StepAP214_AppliedGroupAssignment"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepAP242ItemIdentifiedRepresentationUsageDefinition* {.
      importcpp: "StepAP242_ItemIdentifiedRepresentationUsageDefinition",
      header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ItemIdentifiedRepresentationUsageDefinition
                                                                                                            ## select
                                                                                                            ## type


proc constructStepAP242ItemIdentifiedRepresentationUsageDefinition*(): StepAP242ItemIdentifiedRepresentationUsageDefinition {.
    constructor,
    importcpp: "StepAP242_ItemIdentifiedRepresentationUsageDefinition(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc caseNum*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedApprovalAssignment*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedApprovalAssignment] {.noSideEffect,
    importcpp: "AppliedApprovalAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedDateAndTimeAssignment*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedDateAndTimeAssignment] {.noSideEffect,
    importcpp: "AppliedDateAndTimeAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedDateAssignment*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedDateAssignment] {.noSideEffect,
                                     importcpp: "AppliedDateAssignment", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedDocumentReference*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedDocumentReference] {.noSideEffect,
                                        importcpp: "AppliedDocumentReference", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedExternalIdentificationAssignment*(
    this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedExternalIdentificationAssignment] {.noSideEffect,
    importcpp: "AppliedExternalIdentificationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedGroupAssignment*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedGroupAssignment] {.noSideEffect,
                                      importcpp: "AppliedGroupAssignment", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedOrganizationAssignment*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedPersonAndOrganizationAssignment*(
    this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc appliedSecurityClassificationAssignment*(
    this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepAP214AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc dimensionalSize*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc generalProperty*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepBasicGeneralProperty] {.noSideEffect, importcpp: "GeneralProperty", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc geometricTolerance*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect, importcpp: "GeometricTolerance", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc productDefinitionRelationship*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc propertyDefinition*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc propertyDefinitionRelationship*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepReprPropertyDefinitionRelationship] {.noSideEffect,
    importcpp: "PropertyDefinitionRelationship",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc shapeAspect*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ShapeAspect", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc shapeAspectRelationship*(this: StepAP242ItemIdentifiedRepresentationUsageDefinition): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
