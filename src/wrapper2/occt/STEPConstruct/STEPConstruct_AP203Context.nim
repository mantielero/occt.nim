##  Created on: 1999-11-18
##  Created by: Andrey BETENEV
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
  ../Standard/Standard_Handle

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_SecurityClassificationLevel"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepBasic_ApprovalRole"
discard "forward decl of StepAP203_CcDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP203_CcDesignSecurityClassification"
discard "forward decl of StepAP203_CcDesignDateAndTimeAssignment"
discard "forward decl of StepAP203_CcDesignApproval"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepBasic_ApprovalDateTime"
discard "forward decl of StepBasic_ProductCategoryRelationship"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of STEPConstruct_Part"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
type
  STEPConstruct_AP203Context* {.importcpp: "STEPConstruct_AP203Context",
                               header: "STEPConstruct_AP203Context.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## tool
                                                                                      ## and
                                                                                      ## fills
                                                                                      ## constant
                                                                                      ## fields
                                                                                      ##
                                                                                      ## !
                                                                                      ## Initializes
                                                                                      ## all
                                                                                      ## missing
                                                                                      ## data
                                                                                      ## which
                                                                                      ## are
                                                                                      ## required
                                                                                      ## for
                                                                                      ## part


proc constructSTEPConstruct_AP203Context*(): STEPConstruct_AP203Context {.
    constructor, importcpp: "STEPConstruct_AP203Context(@)",
    header: "STEPConstruct_AP203Context.hxx".}
proc DefaultApproval*(this: var STEPConstruct_AP203Context): handle[
    StepBasic_Approval] {.importcpp: "DefaultApproval",
                         header: "STEPConstruct_AP203Context.hxx".}
proc SetDefaultApproval*(this: var STEPConstruct_AP203Context;
                        app: handle[StepBasic_Approval]) {.
    importcpp: "SetDefaultApproval", header: "STEPConstruct_AP203Context.hxx".}
proc DefaultDateAndTime*(this: var STEPConstruct_AP203Context): handle[
    StepBasic_DateAndTime] {.importcpp: "DefaultDateAndTime",
                            header: "STEPConstruct_AP203Context.hxx".}
proc SetDefaultDateAndTime*(this: var STEPConstruct_AP203Context;
                           dt: handle[StepBasic_DateAndTime]) {.
    importcpp: "SetDefaultDateAndTime", header: "STEPConstruct_AP203Context.hxx".}
proc DefaultPersonAndOrganization*(this: var STEPConstruct_AP203Context): handle[
    StepBasic_PersonAndOrganization] {.importcpp: "DefaultPersonAndOrganization",
                                      header: "STEPConstruct_AP203Context.hxx".}
proc SetDefaultPersonAndOrganization*(this: var STEPConstruct_AP203Context; po: handle[
    StepBasic_PersonAndOrganization]) {.importcpp: "SetDefaultPersonAndOrganization",
                                       header: "STEPConstruct_AP203Context.hxx".}
proc DefaultSecurityClassificationLevel*(this: var STEPConstruct_AP203Context): handle[
    StepBasic_SecurityClassificationLevel] {.
    importcpp: "DefaultSecurityClassificationLevel",
    header: "STEPConstruct_AP203Context.hxx".}
proc SetDefaultSecurityClassificationLevel*(this: var STEPConstruct_AP203Context;
    sc: handle[StepBasic_SecurityClassificationLevel]) {.
    importcpp: "SetDefaultSecurityClassificationLevel",
    header: "STEPConstruct_AP203Context.hxx".}
proc RoleCreator*(this: STEPConstruct_AP203Context): handle[
    StepBasic_PersonAndOrganizationRole] {.noSideEffect, importcpp: "RoleCreator",
    header: "STEPConstruct_AP203Context.hxx".}
proc RoleDesignOwner*(this: STEPConstruct_AP203Context): handle[
    StepBasic_PersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleDesignOwner", header: "STEPConstruct_AP203Context.hxx".}
proc RoleDesignSupplier*(this: STEPConstruct_AP203Context): handle[
    StepBasic_PersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleDesignSupplier", header: "STEPConstruct_AP203Context.hxx".}
proc RoleClassificationOfficer*(this: STEPConstruct_AP203Context): handle[
    StepBasic_PersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleClassificationOfficer",
    header: "STEPConstruct_AP203Context.hxx".}
proc RoleCreationDate*(this: STEPConstruct_AP203Context): handle[
    StepBasic_DateTimeRole] {.noSideEffect, importcpp: "RoleCreationDate",
                             header: "STEPConstruct_AP203Context.hxx".}
proc RoleClassificationDate*(this: STEPConstruct_AP203Context): handle[
    StepBasic_DateTimeRole] {.noSideEffect, importcpp: "RoleClassificationDate",
                             header: "STEPConstruct_AP203Context.hxx".}
proc RoleApprover*(this: STEPConstruct_AP203Context): handle[StepBasic_ApprovalRole] {.
    noSideEffect, importcpp: "RoleApprover",
    header: "STEPConstruct_AP203Context.hxx".}
proc Init*(this: var STEPConstruct_AP203Context;
          sdr: handle[StepShape_ShapeDefinitionRepresentation]) {.
    importcpp: "Init", header: "STEPConstruct_AP203Context.hxx".}
proc Init*(this: var STEPConstruct_AP203Context; SDRTool: STEPConstruct_Part) {.
    importcpp: "Init", header: "STEPConstruct_AP203Context.hxx".}
proc Init*(this: var STEPConstruct_AP203Context;
          nauo: handle[StepRepr_NextAssemblyUsageOccurrence]) {.importcpp: "Init",
    header: "STEPConstruct_AP203Context.hxx".}
proc GetCreator*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetCreator", header: "STEPConstruct_AP203Context.hxx".}
proc GetDesignOwner*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetDesignOwner", header: "STEPConstruct_AP203Context.hxx".}
proc GetDesignSupplier*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetDesignSupplier", header: "STEPConstruct_AP203Context.hxx".}
proc GetClassificationOfficer*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetClassificationOfficer",
    header: "STEPConstruct_AP203Context.hxx".}
proc GetSecurity*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignSecurityClassification] {.noSideEffect,
    importcpp: "GetSecurity", header: "STEPConstruct_AP203Context.hxx".}
proc GetCreationDate*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignDateAndTimeAssignment] {.noSideEffect,
    importcpp: "GetCreationDate", header: "STEPConstruct_AP203Context.hxx".}
proc GetClassificationDate*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignDateAndTimeAssignment] {.noSideEffect,
    importcpp: "GetClassificationDate", header: "STEPConstruct_AP203Context.hxx".}
proc GetApproval*(this: STEPConstruct_AP203Context): handle[
    StepAP203_CcDesignApproval] {.noSideEffect, importcpp: "GetApproval",
                                 header: "STEPConstruct_AP203Context.hxx".}
proc GetApprover*(this: STEPConstruct_AP203Context): handle[
    StepBasic_ApprovalPersonOrganization] {.noSideEffect,
    importcpp: "GetApprover", header: "STEPConstruct_AP203Context.hxx".}
proc GetApprovalDateTime*(this: STEPConstruct_AP203Context): handle[
    StepBasic_ApprovalDateTime] {.noSideEffect, importcpp: "GetApprovalDateTime",
                                 header: "STEPConstruct_AP203Context.hxx".}
proc GetProductCategoryRelationship*(this: STEPConstruct_AP203Context): handle[
    StepBasic_ProductCategoryRelationship] {.noSideEffect,
    importcpp: "GetProductCategoryRelationship",
    header: "STEPConstruct_AP203Context.hxx".}
proc Clear*(this: var STEPConstruct_AP203Context) {.importcpp: "Clear",
    header: "STEPConstruct_AP203Context.hxx".}
proc InitRoles*(this: var STEPConstruct_AP203Context) {.importcpp: "InitRoles",
    header: "STEPConstruct_AP203Context.hxx".}
proc InitAssembly*(this: var STEPConstruct_AP203Context;
                  nauo: handle[StepRepr_NextAssemblyUsageOccurrence]) {.
    importcpp: "InitAssembly", header: "STEPConstruct_AP203Context.hxx".}
proc InitSecurityRequisites*(this: var STEPConstruct_AP203Context) {.
    importcpp: "InitSecurityRequisites", header: "STEPConstruct_AP203Context.hxx".}
proc InitApprovalRequisites*(this: var STEPConstruct_AP203Context) {.
    importcpp: "InitApprovalRequisites", header: "STEPConstruct_AP203Context.hxx".}