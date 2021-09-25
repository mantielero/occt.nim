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

discard "forward decl of StepBasic_ObjectRole"
discard "forward decl of StepBasic_RoleSelect"
discard "forward decl of StepBasic_RoleAssociation"
discard "forward decl of StepBasic_RoleAssociation"
type
  HandleStepBasicRoleAssociation* = Handle[StepBasicRoleAssociation]

## ! Representation of STEP entity RoleAssociation

type
  StepBasicRoleAssociation* {.importcpp: "StepBasic_RoleAssociation",
                             header: "StepBasic_RoleAssociation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasicRoleAssociation*(): StepBasicRoleAssociation {.constructor,
    importcpp: "StepBasic_RoleAssociation(@)",
    header: "StepBasic_RoleAssociation.hxx".}
proc init*(this: var StepBasicRoleAssociation; aRole: Handle[StepBasicObjectRole];
          aItemWithRole: StepBasicRoleSelect) {.importcpp: "Init",
    header: "StepBasic_RoleAssociation.hxx".}
proc role*(this: StepBasicRoleAssociation): Handle[StepBasicObjectRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_RoleAssociation.hxx".}
proc setRole*(this: var StepBasicRoleAssociation; role: Handle[StepBasicObjectRole]) {.
    importcpp: "SetRole", header: "StepBasic_RoleAssociation.hxx".}
proc itemWithRole*(this: StepBasicRoleAssociation): StepBasicRoleSelect {.
    noSideEffect, importcpp: "ItemWithRole",
    header: "StepBasic_RoleAssociation.hxx".}
proc setItemWithRole*(this: var StepBasicRoleAssociation;
                     itemWithRole: StepBasicRoleSelect) {.
    importcpp: "SetItemWithRole", header: "StepBasic_RoleAssociation.hxx".}
type
  StepBasicRoleAssociationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_RoleAssociation::get_type_name(@)",
                            header: "StepBasic_RoleAssociation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_RoleAssociation::get_type_descriptor(@)",
    header: "StepBasic_RoleAssociation.hxx".}
proc dynamicType*(this: StepBasicRoleAssociation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_RoleAssociation.hxx".}
