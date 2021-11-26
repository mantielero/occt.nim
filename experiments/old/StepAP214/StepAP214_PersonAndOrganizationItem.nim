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
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepBasic_Approval"
type
  StepAP214PersonAndOrganizationItem* {.importcpp: "StepAP214_PersonAndOrganizationItem", header: "StepAP214_PersonAndOrganizationItem.hxx",
                                       bycopy.} = object of StepAP214ApprovalItem


proc `new`*(this: var StepAP214PersonAndOrganizationItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_PersonAndOrganizationItem::operator new",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc `delete`*(this: var StepAP214PersonAndOrganizationItem; theAddress: pointer) {.
    importcpp: "StepAP214_PersonAndOrganizationItem::operator delete",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc `new[]`*(this: var StepAP214PersonAndOrganizationItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_PersonAndOrganizationItem::operator new[]",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc `delete[]`*(this: var StepAP214PersonAndOrganizationItem; theAddress: pointer) {.
    importcpp: "StepAP214_PersonAndOrganizationItem::operator delete[]",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc `new`*(this: var StepAP214PersonAndOrganizationItem; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepAP214_PersonAndOrganizationItem::operator new", header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc `delete`*(this: var StepAP214PersonAndOrganizationItem; a2: pointer; a3: pointer) {.
    importcpp: "StepAP214_PersonAndOrganizationItem::operator delete",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc constructStepAP214PersonAndOrganizationItem*(): StepAP214PersonAndOrganizationItem {.
    constructor, importcpp: "StepAP214_PersonAndOrganizationItem(@)",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc caseNum*(this: StepAP214PersonAndOrganizationItem;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc appliedOrganizationAssignment*(this: StepAP214PersonAndOrganizationItem): Handle[
    StepAP214AppliedOrganizationAssignment] {.noSideEffect,
    importcpp: "AppliedOrganizationAssignment",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc appliedSecurityClassificationAssignment*(
    this: StepAP214PersonAndOrganizationItem): Handle[
    StepAP214AppliedSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "AppliedSecurityClassificationAssignment",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}
proc approval*(this: StepAP214PersonAndOrganizationItem): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "Approval",
    header: "StepAP214_PersonAndOrganizationItem.hxx".}