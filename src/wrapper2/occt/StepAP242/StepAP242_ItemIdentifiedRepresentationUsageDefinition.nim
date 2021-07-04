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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

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
  StepAP242_ItemIdentifiedRepresentationUsageDefinition* {.
      importcpp: "StepAP242_ItemIdentifiedRepresentationUsageDefinition",
      header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## ItemIdentifiedRepresentationUsageDefinition
                                                                                                             ## select
                                                                                                             ## type


proc constructStepAP242_ItemIdentifiedRepresentationUsageDefinition*(): StepAP242_ItemIdentifiedRepresentationUsageDefinition {.
    constructor,
    importcpp: "StepAP242_ItemIdentifiedRepresentationUsageDefinition(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc CaseNum*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedApprovalAssignment*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedApprovalAssignment] {.noSideEffect,
    importcpp: "AppliedApprovalAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedDateAndTimeAssignment*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedDateAndTimeAssignment] {.noSideEffect,
    importcpp: "AppliedDateAndTimeAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedDateAssignment*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedDateAssignment] {.noSideEffect,
                                      importcpp: "AppliedDateAssignment", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedDocumentReference*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedDocumentReference] {.noSideEffect,
    importcpp: "AppliedDocumentReference",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedExternalIdentificationAssignment*(
    this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedExternalIdentificationAssignment] {.noSideEffect,
    importcpp: "AppliedExternalIdentificationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedGroupAssignment*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedGroupAssignment] {.noSideEffect,
                                       importcpp: "AppliedGroupAssignment", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedOrganizationAssignment*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedPersonAndOrganizationAssignment*(
    this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc AppliedSecurityClassificationAssignment*(
    this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepAP214_AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc DimensionalSize*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepShape_DimensionalSize] {.noSideEffect, importcpp: "DimensionalSize", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc GeneralProperty*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepBasic_GeneralProperty] {.noSideEffect, importcpp: "GeneralProperty", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc GeometricTolerance*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "GeometricTolerance", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc ProductDefinitionRelationship*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc PropertyDefinition*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc PropertyDefinitionRelationship*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepRepr_PropertyDefinitionRelationship] {.noSideEffect,
    importcpp: "PropertyDefinitionRelationship",
    header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc ShapeAspect*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}
proc ShapeAspectRelationship*(this: StepAP242_ItemIdentifiedRepresentationUsageDefinition): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship", header: "StepAP242_ItemIdentifiedRepresentationUsageDefinition.hxx".}