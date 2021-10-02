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
discard "forward decl of StepBasic_ActionAssignment"
discard "forward decl of StepBasic_ActionRequestAssignment"
discard "forward decl of StepBasic_ApprovalAssignment"
discard "forward decl of StepBasic_ApprovalDateTime"
discard "forward decl of StepBasic_CertificationAssignment"
discard "forward decl of StepBasic_ContractAssignment"
discard "forward decl of StepBasic_DocumentReference"
discard "forward decl of StepBasic_EffectivityAssignment"
discard "forward decl of StepBasic_GroupAssignment"
discard "forward decl of StepBasic_NameAssignment"
discard "forward decl of StepBasic_SecurityClassificationAssignment"
type
  StepBasicRoleSelect* {.importcpp: "StepBasic_RoleSelect",
                        header: "StepBasic_RoleSelect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicRoleSelect; theSize: csize_t): pointer {.
    importcpp: "StepBasic_RoleSelect::operator new",
    header: "StepBasic_RoleSelect.hxx".}
proc `delete`*(this: var StepBasicRoleSelect; theAddress: pointer) {.
    importcpp: "StepBasic_RoleSelect::operator delete",
    header: "StepBasic_RoleSelect.hxx".}
proc `new[]`*(this: var StepBasicRoleSelect; theSize: csize_t): pointer {.
    importcpp: "StepBasic_RoleSelect::operator new[]",
    header: "StepBasic_RoleSelect.hxx".}
proc `delete[]`*(this: var StepBasicRoleSelect; theAddress: pointer) {.
    importcpp: "StepBasic_RoleSelect::operator delete[]",
    header: "StepBasic_RoleSelect.hxx".}
proc `new`*(this: var StepBasicRoleSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepBasic_RoleSelect::operator new",
    header: "StepBasic_RoleSelect.hxx".}
proc `delete`*(this: var StepBasicRoleSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepBasic_RoleSelect::operator delete",
    header: "StepBasic_RoleSelect.hxx".}
proc constructStepBasicRoleSelect*(): StepBasicRoleSelect {.constructor,
    importcpp: "StepBasic_RoleSelect(@)", header: "StepBasic_RoleSelect.hxx".}
proc caseNum*(this: StepBasicRoleSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_RoleSelect.hxx".}
proc actionAssignment*(this: StepBasicRoleSelect): Handle[StepBasicActionAssignment] {.
    noSideEffect, importcpp: "ActionAssignment", header: "StepBasic_RoleSelect.hxx".}
proc actionRequestAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicActionRequestAssignment] {.noSideEffect,
                                       importcpp: "ActionRequestAssignment",
                                       header: "StepBasic_RoleSelect.hxx".}
proc approvalAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicApprovalAssignment] {.noSideEffect, importcpp: "ApprovalAssignment",
                                  header: "StepBasic_RoleSelect.hxx".}
proc approvalDateTime*(this: StepBasicRoleSelect): Handle[StepBasicApprovalDateTime] {.
    noSideEffect, importcpp: "ApprovalDateTime", header: "StepBasic_RoleSelect.hxx".}
proc certificationAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicCertificationAssignment] {.noSideEffect,
                                       importcpp: "CertificationAssignment",
                                       header: "StepBasic_RoleSelect.hxx".}
proc contractAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicContractAssignment] {.noSideEffect, importcpp: "ContractAssignment",
                                  header: "StepBasic_RoleSelect.hxx".}
proc documentReference*(this: StepBasicRoleSelect): Handle[
    StepBasicDocumentReference] {.noSideEffect, importcpp: "DocumentReference",
                                 header: "StepBasic_RoleSelect.hxx".}
proc effectivityAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicEffectivityAssignment] {.noSideEffect,
                                     importcpp: "EffectivityAssignment",
                                     header: "StepBasic_RoleSelect.hxx".}
proc groupAssignment*(this: StepBasicRoleSelect): Handle[StepBasicGroupAssignment] {.
    noSideEffect, importcpp: "GroupAssignment", header: "StepBasic_RoleSelect.hxx".}
proc nameAssignment*(this: StepBasicRoleSelect): Handle[StepBasicNameAssignment] {.
    noSideEffect, importcpp: "NameAssignment", header: "StepBasic_RoleSelect.hxx".}
proc securityClassificationAssignment*(this: StepBasicRoleSelect): Handle[
    StepBasicSecurityClassificationAssignment] {.noSideEffect,
    importcpp: "SecurityClassificationAssignment",
    header: "StepBasic_RoleSelect.hxx".}