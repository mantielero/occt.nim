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
  StepBasic_RoleSelect* {.importcpp: "StepBasic_RoleSelect",
                         header: "StepBasic_RoleSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepBasic_RoleSelect*(): StepBasic_RoleSelect {.constructor,
    importcpp: "StepBasic_RoleSelect(@)", header: "StepBasic_RoleSelect.hxx".}
proc CaseNum*(this: StepBasic_RoleSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_RoleSelect.hxx".}
proc ActionAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_ActionAssignment] {.noSideEffect, importcpp: "ActionAssignment",
                                 header: "StepBasic_RoleSelect.hxx".}
proc ActionRequestAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_ActionRequestAssignment] {.noSideEffect,
                                        importcpp: "ActionRequestAssignment",
                                        header: "StepBasic_RoleSelect.hxx".}
proc ApprovalAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_ApprovalAssignment] {.noSideEffect, importcpp: "ApprovalAssignment",
                                   header: "StepBasic_RoleSelect.hxx".}
proc ApprovalDateTime*(this: StepBasic_RoleSelect): handle[
    StepBasic_ApprovalDateTime] {.noSideEffect, importcpp: "ApprovalDateTime",
                                 header: "StepBasic_RoleSelect.hxx".}
proc CertificationAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_CertificationAssignment] {.noSideEffect,
                                        importcpp: "CertificationAssignment",
                                        header: "StepBasic_RoleSelect.hxx".}
proc ContractAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_ContractAssignment] {.noSideEffect, importcpp: "ContractAssignment",
                                   header: "StepBasic_RoleSelect.hxx".}
proc DocumentReference*(this: StepBasic_RoleSelect): handle[
    StepBasic_DocumentReference] {.noSideEffect, importcpp: "DocumentReference",
                                  header: "StepBasic_RoleSelect.hxx".}
proc EffectivityAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_EffectivityAssignment] {.noSideEffect,
                                      importcpp: "EffectivityAssignment",
                                      header: "StepBasic_RoleSelect.hxx".}
proc GroupAssignment*(this: StepBasic_RoleSelect): handle[StepBasic_GroupAssignment] {.
    noSideEffect, importcpp: "GroupAssignment", header: "StepBasic_RoleSelect.hxx".}
proc NameAssignment*(this: StepBasic_RoleSelect): handle[StepBasic_NameAssignment] {.
    noSideEffect, importcpp: "NameAssignment", header: "StepBasic_RoleSelect.hxx".}
proc SecurityClassificationAssignment*(this: StepBasic_RoleSelect): handle[
    StepBasic_SecurityClassificationAssignment] {.noSideEffect,
    importcpp: "SecurityClassificationAssignment",
    header: "StepBasic_RoleSelect.hxx".}