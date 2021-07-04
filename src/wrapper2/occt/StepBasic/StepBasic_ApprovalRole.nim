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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApprovalRole"
discard "forward decl of StepBasic_ApprovalRole"
type
  Handle_StepBasic_ApprovalRole* = handle[StepBasic_ApprovalRole]
  StepBasic_ApprovalRole* {.importcpp: "StepBasic_ApprovalRole",
                           header: "StepBasic_ApprovalRole.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## ApprovalRole


proc constructStepBasic_ApprovalRole*(): StepBasic_ApprovalRole {.constructor,
    importcpp: "StepBasic_ApprovalRole(@)", header: "StepBasic_ApprovalRole.hxx".}
proc Init*(this: var StepBasic_ApprovalRole; aRole: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ApprovalRole.hxx".}
proc SetRole*(this: var StepBasic_ApprovalRole;
             aRole: handle[TCollection_HAsciiString]) {.importcpp: "SetRole",
    header: "StepBasic_ApprovalRole.hxx".}
proc Role*(this: StepBasic_ApprovalRole): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_ApprovalRole.hxx".}
type
  StepBasic_ApprovalRolebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalRole::get_type_name(@)",
                              header: "StepBasic_ApprovalRole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalRole::get_type_descriptor(@)",
    header: "StepBasic_ApprovalRole.hxx".}
proc DynamicType*(this: StepBasic_ApprovalRole): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ApprovalRole.hxx".}