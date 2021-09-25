##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_DocumentFile"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_ExternallyDefinedClass"
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalStatus"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_OrganizationalAddress"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepGeom_TrimmedCurve"
discard "forward decl of StepBasic_DateAndTimeAssignment"
discard "forward decl of StepBasic_DateAssignment"
type
  StepAP214ExternalIdentificationItem* {.importcpp: "StepAP214_ExternalIdentificationItem", header: "StepAP214_ExternalIdentificationItem.hxx",
                                        bycopy.} = object of StepDataSelectType ## ! Empty
                                                                           ## constructor


proc constructStepAP214ExternalIdentificationItem*(): StepAP214ExternalIdentificationItem {.
    constructor, importcpp: "StepAP214_ExternalIdentificationItem(@)",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc caseNum*(this: StepAP214ExternalIdentificationItem;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc documentFile*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicDocumentFile] {.noSideEffect, importcpp: "DocumentFile",
                            header: "StepAP214_ExternalIdentificationItem.hxx".}
proc externallyDefinedClass*(this: StepAP214ExternalIdentificationItem): Handle[
    StepAP214ExternallyDefinedClass] {.noSideEffect,
                                      importcpp: "ExternallyDefinedClass", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc externallyDefinedGeneralProperty*(this: StepAP214ExternalIdentificationItem): Handle[
    StepAP214ExternallyDefinedGeneralProperty] {.noSideEffect,
    importcpp: "ExternallyDefinedGeneralProperty",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc productDefinition*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc appliedOrganizationAssignment*(this: StepAP214ExternalIdentificationItem): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc appliedPersonAndOrganizationAssignment*(
    this: StepAP214ExternalIdentificationItem): Handle[
    StepAP214AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc approval*(this: StepAP214ExternalIdentificationItem): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "Approval",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc approvalStatus*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicApprovalStatus] {.noSideEffect, importcpp: "ApprovalStatus", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc externalSource*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicExternalSource] {.noSideEffect, importcpp: "ExternalSource", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc organizationalAddress*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicOrganizationalAddress] {.noSideEffect,
                                     importcpp: "OrganizationalAddress", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc securityClassification*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicSecurityClassification] {.noSideEffect,
                                      importcpp: "SecurityClassification", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc trimmedCurve*(this: StepAP214ExternalIdentificationItem): Handle[
    StepGeomTrimmedCurve] {.noSideEffect, importcpp: "TrimmedCurve",
                           header: "StepAP214_ExternalIdentificationItem.hxx".}
proc versionedActionRequest*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicVersionedActionRequest] {.noSideEffect,
                                      importcpp: "VersionedActionRequest", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc dateAndTimeAssignment*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicDateAndTimeAssignment] {.noSideEffect,
                                     importcpp: "DateAndTimeAssignment", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc dateAssignment*(this: StepAP214ExternalIdentificationItem): Handle[
    StepBasicDateAssignment] {.noSideEffect, importcpp: "DateAssignment", header: "StepAP214_ExternalIdentificationItem.hxx".}
