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

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalRole"
discard "forward decl of StepBasic_PersonOrganizationSelect"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
type
  HandleC1C1* = Handle[StepBasicApprovalPersonOrganization]
  StepBasicApprovalPersonOrganization* {.importcpp: "StepBasic_ApprovalPersonOrganization", header: "StepBasic_ApprovalPersonOrganization.hxx",
                                        bycopy.} = object of StandardTransient ## !
                                                                          ## Returns a
                                                                          ## ApprovalPersonOrganization


proc constructStepBasicApprovalPersonOrganization*(): StepBasicApprovalPersonOrganization {.
    constructor, importcpp: "StepBasic_ApprovalPersonOrganization(@)",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc init*(this: var StepBasicApprovalPersonOrganization;
          aPersonOrganization: StepBasicPersonOrganizationSelect;
          aAuthorizedApproval: Handle[StepBasicApproval];
          aRole: Handle[StepBasicApprovalRole]) {.importcpp: "Init",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc setPersonOrganization*(this: var StepBasicApprovalPersonOrganization;
    aPersonOrganization: StepBasicPersonOrganizationSelect) {.
    importcpp: "SetPersonOrganization",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc personOrganization*(this: StepBasicApprovalPersonOrganization): StepBasicPersonOrganizationSelect {.
    noSideEffect, importcpp: "PersonOrganization",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc setAuthorizedApproval*(this: var StepBasicApprovalPersonOrganization;
                           aAuthorizedApproval: Handle[StepBasicApproval]) {.
    importcpp: "SetAuthorizedApproval",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc authorizedApproval*(this: StepBasicApprovalPersonOrganization): Handle[
    StepBasicApproval] {.noSideEffect, importcpp: "AuthorizedApproval",
                        header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc setRole*(this: var StepBasicApprovalPersonOrganization;
             aRole: Handle[StepBasicApprovalRole]) {.importcpp: "SetRole",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc role*(this: StepBasicApprovalPersonOrganization): Handle[StepBasicApprovalRole] {.
    noSideEffect, importcpp: "Role",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
type
  StepBasicApprovalPersonOrganizationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApprovalPersonOrganization::get_type_name(@)",
                            header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApprovalPersonOrganization::get_type_descriptor(@)",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}
proc dynamicType*(this: StepBasicApprovalPersonOrganization): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalPersonOrganization.hxx".}

























