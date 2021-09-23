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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepBasic_PersonOrganizationSelect, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalRole"
discard "forward decl of StepBasic_PersonOrganizationSelect"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
type
  Handle_StepBasic_ApprovalPersonOrganization* = handle[
      StepBasic_ApprovalPersonOrganization]
  StepBasic_ApprovalPersonOrganization* {.
      importcpp: "StepBasic_ApprovalPersonOrganization",
      header: "StepBasic_ApprovalPersonOrganization.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## ApprovalPersonOrganization


proc constructStepBasic_ApprovalPersonOrganization*(): StepBasic_ApprovalPersonOrganization {.
    constructor, importcpp: "StepBasic_ApprovalPersonOrganization(@)",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc Init*(this: var StepBasic_ApprovalPersonOrganization;
          aPersonOrganization: StepBasic_PersonOrganizationSelect;
          aAuthorizedApproval: handle[StepBasic_Approval];
          aRole: handle[StepBasic_ApprovalRole]) {.importcpp: "Init",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc SetPersonOrganization*(this: var StepBasic_ApprovalPersonOrganization;
    aPersonOrganization: StepBasic_PersonOrganizationSelect) {.
    importcpp: "SetPersonOrganization",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc PersonOrganization*(this: StepBasic_ApprovalPersonOrganization): StepBasic_PersonOrganizationSelect {.
    noSideEffect, importcpp: "PersonOrganization",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc SetAuthorizedApproval*(this: var StepBasic_ApprovalPersonOrganization;
                           aAuthorizedApproval: handle[StepBasic_Approval]) {.
    importcpp: "SetAuthorizedApproval",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc AuthorizedApproval*(this: StepBasic_ApprovalPersonOrganization): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "AuthorizedApproval",
                         header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc SetRole*(this: var StepBasic_ApprovalPersonOrganization;
             aRole: handle[StepBasic_ApprovalRole]) {.importcpp: "SetRole",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc Role*(this: StepBasic_ApprovalPersonOrganization): handle[
    StepBasic_ApprovalRole] {.noSideEffect, importcpp: "Role",
                             header: "StepBasic_ApprovalPersonOrganization.hxx".}
type
  StepBasic_ApprovalPersonOrganizationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalPersonOrganization::get_type_name(@)", header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalPersonOrganization::get_type_descriptor(@)",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc DynamicType*(this: StepBasic_ApprovalPersonOrganization): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}