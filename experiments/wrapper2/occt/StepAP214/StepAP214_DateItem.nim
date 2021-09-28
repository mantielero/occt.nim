##  Created on: 1999-03-09
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
type
  StepAP214DateItem* {.importcpp: "StepAP214_DateItem",
                      header: "StepAP214_DateItem.hxx", bycopy.} = object of StepAP214ApprovalItem ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## DateItem
                                                                                            ## SelectType


proc constructStepAP214DateItem*(): StepAP214DateItem {.constructor,
    importcpp: "StepAP214_DateItem(@)", header: "StepAP214_DateItem.hxx".}
proc caseNum*(this: StepAP214DateItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_DateItem.hxx".}
proc approvalPersonOrganization*(this: StepAP214DateItem): Handle[
    StepBasicApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization", header: "StepAP214_DateItem.hxx".}
proc appliedPersonAndOrganizationAssignment*(this: StepAP214DateItem): Handle[
    StepAP214AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP214_DateItem.hxx".}
proc appliedOrganizationAssignment*(this: StepAP214DateItem): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment", header: "StepAP214_DateItem.hxx".}
proc appliedSecurityClassificationAssignment*(this: StepAP214DateItem): Handle[
    StepAP214AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP214_DateItem.hxx".}

























