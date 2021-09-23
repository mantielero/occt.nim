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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

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
  StepAP214_ExternalIdentificationItem* {.
      importcpp: "StepAP214_ExternalIdentificationItem",
      header: "StepAP214_ExternalIdentificationItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepAP214_ExternalIdentificationItem*(): StepAP214_ExternalIdentificationItem {.
    constructor, importcpp: "StepAP214_ExternalIdentificationItem(@)",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc CaseNum*(this: StepAP214_ExternalIdentificationItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc DocumentFile*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_DocumentFile] {.noSideEffect, importcpp: "DocumentFile",
                             header: "StepAP214_ExternalIdentificationItem.hxx".}
proc ExternallyDefinedClass*(this: StepAP214_ExternalIdentificationItem): handle[
    StepAP214_ExternallyDefinedClass] {.noSideEffect,
                                       importcpp: "ExternallyDefinedClass", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc ExternallyDefinedGeneralProperty*(this: StepAP214_ExternalIdentificationItem): handle[
    StepAP214_ExternallyDefinedGeneralProperty] {.noSideEffect,
    importcpp: "ExternallyDefinedGeneralProperty",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc ProductDefinition*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc AppliedOrganizationAssignment*(this: StepAP214_ExternalIdentificationItem): handle[
    StepAP214_AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc AppliedPersonAndOrganizationAssignment*(
    this: StepAP214_ExternalIdentificationItem): handle[
    StepAP214_AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP214_ExternalIdentificationItem.hxx".}
proc Approval*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "Approval",
                         header: "StepAP214_ExternalIdentificationItem.hxx".}
proc ApprovalStatus*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_ApprovalStatus] {.noSideEffect, importcpp: "ApprovalStatus", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc ExternalSource*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_ExternalSource] {.noSideEffect, importcpp: "ExternalSource", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc OrganizationalAddress*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_OrganizationalAddress] {.noSideEffect,
                                      importcpp: "OrganizationalAddress", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc SecurityClassification*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_SecurityClassification] {.noSideEffect,
                                       importcpp: "SecurityClassification", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc TrimmedCurve*(this: StepAP214_ExternalIdentificationItem): handle[
    StepGeom_TrimmedCurve] {.noSideEffect, importcpp: "TrimmedCurve",
                            header: "StepAP214_ExternalIdentificationItem.hxx".}
proc VersionedActionRequest*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_VersionedActionRequest] {.noSideEffect,
                                       importcpp: "VersionedActionRequest", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc DateAndTimeAssignment*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_DateAndTimeAssignment] {.noSideEffect,
                                      importcpp: "DateAndTimeAssignment", header: "StepAP214_ExternalIdentificationItem.hxx".}
proc DateAssignment*(this: StepAP214_ExternalIdentificationItem): handle[
    StepBasic_DateAssignment] {.noSideEffect, importcpp: "DateAssignment", header: "StepAP214_ExternalIdentificationItem.hxx".}