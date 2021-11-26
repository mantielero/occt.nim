##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepAP214_Protocol"
discard "forward decl of StepAP214_AutoDesignDateAndPersonItem"
discard "forward decl of StepAP214_AutoDesignDateAndTimeItem"
discard "forward decl of StepAP214_AutoDesignDatedItem"
discard "forward decl of StepAP214_AutoDesignGeneralOrgItem"
discard "forward decl of StepAP214_AutoDesignOrganizationItem"
discard "forward decl of StepAP214_AutoDesignGroupedItem"
discard "forward decl of StepAP214_AutoDesignPresentedItemSelect"
discard "forward decl of StepAP214_AutoDesignReferencingItem"
discard "forward decl of StepAP214_DateAndTimeItem"
discard "forward decl of StepAP214_DateItem"
discard "forward decl of StepAP214_ApprovalItem"
discard "forward decl of StepAP214_OrganizationItem"
discard "forward decl of StepAP214_DocumentReferenceItem"
discard "forward decl of StepAP214_GroupItem"
discard "forward decl of StepAP214_PersonAndOrganizationItem"
discard "forward decl of StepAP214_PresentedItemSelect"
discard "forward decl of StepAP214_SecurityClassificationItem"
discard "forward decl of StepAP214_Protocol"
discard "forward decl of StepAP214_AutoDesignApprovalAssignment"
discard "forward decl of StepAP214_AutoDesignActualDateAndTimeAssignment"
discard "forward decl of StepAP214_AutoDesignNominalDateAndTimeAssignment"
discard "forward decl of StepAP214_AutoDesignActualDateAssignment"
discard "forward decl of StepAP214_AutoDesignNominalDateAssignment"
discard "forward decl of StepAP214_AutoDesignGroupAssignment"
discard "forward decl of StepAP214_AutoDesignOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
discard "forward decl of StepAP214_AutoDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AutoDesignPresentedItem"
discard "forward decl of StepAP214_AutoDesignSecurityClassificationAssignment"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
discard "forward decl of StepAP214_AppliedApprovalAssignment"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
discard "forward decl of StepAP214_AppliedDateAssignment"
discard "forward decl of StepAP214_AppliedGroupAssignment"
discard "forward decl of StepAP214_AppliedOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPersonAndOrganizationAssignment"
discard "forward decl of StepAP214_AppliedPresentedItem"
discard "forward decl of StepAP214_AppliedSecurityClassificationAssignment"
discard "forward decl of StepAP214_AppliedDocumentReference"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
discard "forward decl of StepAP214_Class"
discard "forward decl of StepAP214_ExternalIdentificationItem"
discard "forward decl of StepAP214_ExternallyDefinedClass"
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
discard "forward decl of StepAP214_RepItemGroup"
type
  StepAP214* {.importcpp: "StepAP214", header: "StepAP214.hxx", bycopy.} = object


proc `new`*(this: var StepAP214; theSize: csize_t): pointer {.
    importcpp: "StepAP214::operator new", header: "StepAP214.hxx".}
proc `delete`*(this: var StepAP214; theAddress: pointer) {.
    importcpp: "StepAP214::operator delete", header: "StepAP214.hxx".}
proc `new[]`*(this: var StepAP214; theSize: csize_t): pointer {.
    importcpp: "StepAP214::operator new[]", header: "StepAP214.hxx".}
proc `delete[]`*(this: var StepAP214; theAddress: pointer) {.
    importcpp: "StepAP214::operator delete[]", header: "StepAP214.hxx".}
proc `new`*(this: var StepAP214; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepAP214::operator new", header: "StepAP214.hxx".}
proc `delete`*(this: var StepAP214; a2: pointer; a3: pointer) {.
    importcpp: "StepAP214::operator delete", header: "StepAP214.hxx".}
proc protocol*(): Handle[StepAP214Protocol] {.importcpp: "StepAP214::Protocol(@)",
    header: "StepAP214.hxx".}