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
  STEPConstructAP203Context* {.importcpp: "STEPConstruct_AP203Context",
                              header: "STEPConstruct_AP203Context.hxx", bycopy.} = object ##
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


proc `new`*(this: var STEPConstructAP203Context; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_AP203Context::operator new",
    header: "STEPConstruct_AP203Context.hxx".}
proc `delete`*(this: var STEPConstructAP203Context; theAddress: pointer) {.
    importcpp: "STEPConstruct_AP203Context::operator delete",
    header: "STEPConstruct_AP203Context.hxx".}
proc `new[]`*(this: var STEPConstructAP203Context; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_AP203Context::operator new[]",
    header: "STEPConstruct_AP203Context.hxx".}
proc `delete[]`*(this: var STEPConstructAP203Context; theAddress: pointer) {.
    importcpp: "STEPConstruct_AP203Context::operator delete[]",
    header: "STEPConstruct_AP203Context.hxx".}
proc `new`*(this: var STEPConstructAP203Context; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPConstruct_AP203Context::operator new",
    header: "STEPConstruct_AP203Context.hxx".}
proc `delete`*(this: var STEPConstructAP203Context; a2: pointer; a3: pointer) {.
    importcpp: "STEPConstruct_AP203Context::operator delete",
    header: "STEPConstruct_AP203Context.hxx".}
proc constructSTEPConstructAP203Context*(): STEPConstructAP203Context {.
    constructor, importcpp: "STEPConstruct_AP203Context(@)",
    header: "STEPConstruct_AP203Context.hxx".}
proc defaultApproval*(this: var STEPConstructAP203Context): Handle[StepBasicApproval] {.
    importcpp: "DefaultApproval", header: "STEPConstruct_AP203Context.hxx".}
proc setDefaultApproval*(this: var STEPConstructAP203Context;
                        app: Handle[StepBasicApproval]) {.
    importcpp: "SetDefaultApproval", header: "STEPConstruct_AP203Context.hxx".}
proc defaultDateAndTime*(this: var STEPConstructAP203Context): Handle[
    StepBasicDateAndTime] {.importcpp: "DefaultDateAndTime",
                           header: "STEPConstruct_AP203Context.hxx".}
proc setDefaultDateAndTime*(this: var STEPConstructAP203Context;
                           dt: Handle[StepBasicDateAndTime]) {.
    importcpp: "SetDefaultDateAndTime", header: "STEPConstruct_AP203Context.hxx".}
proc defaultPersonAndOrganization*(this: var STEPConstructAP203Context): Handle[
    StepBasicPersonAndOrganization] {.importcpp: "DefaultPersonAndOrganization",
                                     header: "STEPConstruct_AP203Context.hxx".}
proc setDefaultPersonAndOrganization*(this: var STEPConstructAP203Context;
                                     po: Handle[StepBasicPersonAndOrganization]) {.
    importcpp: "SetDefaultPersonAndOrganization",
    header: "STEPConstruct_AP203Context.hxx".}
proc defaultSecurityClassificationLevel*(this: var STEPConstructAP203Context): Handle[
    StepBasicSecurityClassificationLevel] {.
    importcpp: "DefaultSecurityClassificationLevel",
    header: "STEPConstruct_AP203Context.hxx".}
proc setDefaultSecurityClassificationLevel*(this: var STEPConstructAP203Context;
    sc: Handle[StepBasicSecurityClassificationLevel]) {.
    importcpp: "SetDefaultSecurityClassificationLevel",
    header: "STEPConstruct_AP203Context.hxx".}
proc roleCreator*(this: STEPConstructAP203Context): Handle[
    StepBasicPersonAndOrganizationRole] {.noSideEffect, importcpp: "RoleCreator",
    header: "STEPConstruct_AP203Context.hxx".}
proc roleDesignOwner*(this: STEPConstructAP203Context): Handle[
    StepBasicPersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleDesignOwner", header: "STEPConstruct_AP203Context.hxx".}
proc roleDesignSupplier*(this: STEPConstructAP203Context): Handle[
    StepBasicPersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleDesignSupplier", header: "STEPConstruct_AP203Context.hxx".}
proc roleClassificationOfficer*(this: STEPConstructAP203Context): Handle[
    StepBasicPersonAndOrganizationRole] {.noSideEffect,
    importcpp: "RoleClassificationOfficer",
    header: "STEPConstruct_AP203Context.hxx".}
proc roleCreationDate*(this: STEPConstructAP203Context): Handle[
    StepBasicDateTimeRole] {.noSideEffect, importcpp: "RoleCreationDate",
                            header: "STEPConstruct_AP203Context.hxx".}
proc roleClassificationDate*(this: STEPConstructAP203Context): Handle[
    StepBasicDateTimeRole] {.noSideEffect, importcpp: "RoleClassificationDate",
                            header: "STEPConstruct_AP203Context.hxx".}
proc roleApprover*(this: STEPConstructAP203Context): Handle[StepBasicApprovalRole] {.
    noSideEffect, importcpp: "RoleApprover",
    header: "STEPConstruct_AP203Context.hxx".}
proc init*(this: var STEPConstructAP203Context;
          sdr: Handle[StepShapeShapeDefinitionRepresentation]) {.
    importcpp: "Init", header: "STEPConstruct_AP203Context.hxx".}
proc init*(this: var STEPConstructAP203Context; sDRTool: STEPConstructPart) {.
    importcpp: "Init", header: "STEPConstruct_AP203Context.hxx".}
proc init*(this: var STEPConstructAP203Context;
          nauo: Handle[StepReprNextAssemblyUsageOccurrence]) {.importcpp: "Init",
    header: "STEPConstruct_AP203Context.hxx".}
proc getCreator*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetCreator", header: "STEPConstruct_AP203Context.hxx".}
proc getDesignOwner*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetDesignOwner", header: "STEPConstruct_AP203Context.hxx".}
proc getDesignSupplier*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetDesignSupplier", header: "STEPConstruct_AP203Context.hxx".}
proc getClassificationOfficer*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignPersonAndOrganizationAssignment] {.noSideEffect,
    importcpp: "GetClassificationOfficer",
    header: "STEPConstruct_AP203Context.hxx".}
proc getSecurity*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignSecurityClassification] {.noSideEffect,
    importcpp: "GetSecurity", header: "STEPConstruct_AP203Context.hxx".}
proc getCreationDate*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignDateAndTimeAssignment] {.noSideEffect,
    importcpp: "GetCreationDate", header: "STEPConstruct_AP203Context.hxx".}
proc getClassificationDate*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignDateAndTimeAssignment] {.noSideEffect,
    importcpp: "GetClassificationDate", header: "STEPConstruct_AP203Context.hxx".}
proc getApproval*(this: STEPConstructAP203Context): Handle[
    StepAP203CcDesignApproval] {.noSideEffect, importcpp: "GetApproval",
                                header: "STEPConstruct_AP203Context.hxx".}
proc getApprover*(this: STEPConstructAP203Context): Handle[
    StepBasicApprovalPersonOrganization] {.noSideEffect, importcpp: "GetApprover",
    header: "STEPConstruct_AP203Context.hxx".}
proc getApprovalDateTime*(this: STEPConstructAP203Context): Handle[
    StepBasicApprovalDateTime] {.noSideEffect, importcpp: "GetApprovalDateTime",
                                header: "STEPConstruct_AP203Context.hxx".}
proc getProductCategoryRelationship*(this: STEPConstructAP203Context): Handle[
    StepBasicProductCategoryRelationship] {.noSideEffect,
    importcpp: "GetProductCategoryRelationship",
    header: "STEPConstruct_AP203Context.hxx".}
proc clear*(this: var STEPConstructAP203Context) {.importcpp: "Clear",
    header: "STEPConstruct_AP203Context.hxx".}
proc initRoles*(this: var STEPConstructAP203Context) {.importcpp: "InitRoles",
    header: "STEPConstruct_AP203Context.hxx".}
proc initAssembly*(this: var STEPConstructAP203Context;
                  nauo: Handle[StepReprNextAssemblyUsageOccurrence]) {.
    importcpp: "InitAssembly", header: "STEPConstruct_AP203Context.hxx".}
proc initSecurityRequisites*(this: var STEPConstructAP203Context) {.
    importcpp: "InitSecurityRequisites", header: "STEPConstruct_AP203Context.hxx".}
proc initApprovalRequisites*(this: var STEPConstructAP203Context) {.
    importcpp: "InitApprovalRequisites", header: "STEPConstruct_AP203Context.hxx".}