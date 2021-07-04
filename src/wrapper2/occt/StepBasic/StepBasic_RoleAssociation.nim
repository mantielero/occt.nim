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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_RoleSelect,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_ObjectRole"
discard "forward decl of StepBasic_RoleSelect"
discard "forward decl of StepBasic_RoleAssociation"
discard "forward decl of StepBasic_RoleAssociation"
type
  Handle_StepBasic_RoleAssociation* = handle[StepBasic_RoleAssociation]

## ! Representation of STEP entity RoleAssociation

type
  StepBasic_RoleAssociation* {.importcpp: "StepBasic_RoleAssociation",
                              header: "StepBasic_RoleAssociation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepBasic_RoleAssociation*(): StepBasic_RoleAssociation {.
    constructor, importcpp: "StepBasic_RoleAssociation(@)",
    header: "StepBasic_RoleAssociation.hxx".}
proc Init*(this: var StepBasic_RoleAssociation; aRole: handle[StepBasic_ObjectRole];
          aItemWithRole: StepBasic_RoleSelect) {.importcpp: "Init",
    header: "StepBasic_RoleAssociation.hxx".}
proc Role*(this: StepBasic_RoleAssociation): handle[StepBasic_ObjectRole] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_RoleAssociation.hxx".}
proc SetRole*(this: var StepBasic_RoleAssociation;
             Role: handle[StepBasic_ObjectRole]) {.importcpp: "SetRole",
    header: "StepBasic_RoleAssociation.hxx".}
proc ItemWithRole*(this: StepBasic_RoleAssociation): StepBasic_RoleSelect {.
    noSideEffect, importcpp: "ItemWithRole",
    header: "StepBasic_RoleAssociation.hxx".}
proc SetItemWithRole*(this: var StepBasic_RoleAssociation;
                     ItemWithRole: StepBasic_RoleSelect) {.
    importcpp: "SetItemWithRole", header: "StepBasic_RoleAssociation.hxx".}
type
  StepBasic_RoleAssociationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_RoleAssociation::get_type_name(@)",
                              header: "StepBasic_RoleAssociation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_RoleAssociation::get_type_descriptor(@)",
    header: "StepBasic_RoleAssociation.hxx".}
proc DynamicType*(this: StepBasic_RoleAssociation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_RoleAssociation.hxx".}