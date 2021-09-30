##  Created on: 1999-03-10
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
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
type
  StepAP214OrganizationItem* {.importcpp: "StepAP214_OrganizationItem",
                              header: "StepAP214_OrganizationItem.hxx", bycopy.} = object of StepAP214ApprovalItem ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## OrganizationItem
                                                                                                            ## SelectType


proc constructStepAP214OrganizationItem*(): StepAP214OrganizationItem {.
    constructor, importcpp: "StepAP214_OrganizationItem(@)",
    header: "StepAP214_OrganizationItem.hxx".}
proc caseNum*(this: StepAP214OrganizationItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_OrganizationItem.hxx".}
proc appliedOrganizationAssignment*(this: StepAP214OrganizationItem): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_OrganizationItem.hxx".}
proc approval*(this: StepAP214OrganizationItem): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "Approval", header: "StepAP214_OrganizationItem.hxx".}
proc appliedSecurityClassificationAssignment*(this: StepAP214OrganizationItem): Handle[
    StepAP214AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP214_OrganizationItem.hxx".}

























