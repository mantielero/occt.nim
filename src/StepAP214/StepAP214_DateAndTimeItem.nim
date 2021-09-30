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
type
  StepAP214DateAndTimeItem* {.importcpp: "StepAP214_DateAndTimeItem",
                             header: "StepAP214_DateAndTimeItem.hxx", bycopy.} = object of StepAP214ApprovalItem ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## DateAndTimeItem
                                                                                                          ## SelectType


proc constructStepAP214DateAndTimeItem*(): StepAP214DateAndTimeItem {.constructor,
    importcpp: "StepAP214_DateAndTimeItem(@)",
    header: "StepAP214_DateAndTimeItem.hxx".}
proc caseNum*(this: StepAP214DateAndTimeItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_DateAndTimeItem.hxx".}
proc approvalPersonOrganization*(this: StepAP214DateAndTimeItem): Handle[
    StepBasicApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization",
    header: "StepAP214_DateAndTimeItem.hxx".}
proc appliedPersonAndOrganizationAssignment*(this: StepAP214DateAndTimeItem): Handle[
    StepAP214AppliedPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedPersonAndOrganizationAssignment",
    header: "StepAP214_DateAndTimeItem.hxx".}
proc appliedOrganizationAssignment*(this: StepAP214DateAndTimeItem): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_DateAndTimeItem.hxx".}

























