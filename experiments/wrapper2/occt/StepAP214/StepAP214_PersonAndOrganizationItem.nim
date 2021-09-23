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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepAP214_ApprovalItem,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepBasic_Approval"
type
  StepAP214_PersonAndOrganizationItem* {.importcpp: "StepAP214_PersonAndOrganizationItem", header: "StepAP214_PersonAndOrganizationItem.hxx",
                                        bycopy.} = object of StepAP214_ApprovalItem ## !
                                                                               ## Returns a
                                                                               ## PersonAndOrganizationItem
                                                                               ## SelectType


proc constructStepAP214_PersonAndOrganizationItem*(): StepAP214_PersonAndOrganizationItem {.
    constructor, importcpp: "StepAP214_PersonAndOrganizationItem(@)",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc CaseNum*(this: StepAP214_PersonAndOrganizationItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc AppliedOrganizationAssignment*(this: StepAP214_PersonAndOrganizationItem): handle[
    StepAP214_AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc AppliedSecurityClassificationAssignment*(
    this: StepAP214_PersonAndOrganizationItem): handle[
    StepAP214_AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc Approval*(this: StepAP214_PersonAndOrganizationItem): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "Approval",
                         header: "StepAP214_PersonAndOrganizationItem.hxx".}