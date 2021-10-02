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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApprovalRole"
discard "forward decl of StepBasic_ApprovalRole"
type
  HandleC1C1* = Handle[StepBasicApprovalRole]
  StepBasicApprovalRole* {.importcpp: "StepBasic_ApprovalRole",
                          header: "StepBasic_ApprovalRole.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## ApprovalRole


proc constructStepBasicApprovalRole*(): StepBasicApprovalRole {.constructor,
    importcpp: "StepBasic_ApprovalRole(@)", header: "StepBasic_ApprovalRole.hxx".}
proc init*(this: var StepBasicApprovalRole; aRole: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ApprovalRole.hxx".}
proc setRole*(this: var StepBasicApprovalRole;
             aRole: Handle[TCollectionHAsciiString]) {.importcpp: "SetRole",
    header: "StepBasic_ApprovalRole.hxx".}
proc role*(this: StepBasicApprovalRole): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Role", header: "StepBasic_ApprovalRole.hxx".}
type
  StepBasicApprovalRolebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApprovalRole::get_type_name(@)",
                            header: "StepBasic_ApprovalRole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApprovalRole::get_type_descriptor(@)",
    header: "StepBasic_ApprovalRole.hxx".}
proc dynamicType*(this: StepBasicApprovalRole): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_ApprovalRole.hxx".}