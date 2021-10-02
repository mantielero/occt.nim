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
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
type
  HandleC1C1* = Handle[StepBasicPersonAndOrganizationRole]
  StepBasicPersonAndOrganizationRole* {.importcpp: "StepBasic_PersonAndOrganizationRole", header: "StepBasic_PersonAndOrganizationRole.hxx",
                                       bycopy.} = object of StandardTransient ## ! Returns a
                                                                         ## PersonAndOrganizationRole


proc constructStepBasicPersonAndOrganizationRole*(): StepBasicPersonAndOrganizationRole {.
    constructor, importcpp: "StepBasic_PersonAndOrganizationRole(@)",
    header: "StepBasic_PersonAndOrganizationRole.hxx".}
proc init*(this: var StepBasicPersonAndOrganizationRole;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_PersonAndOrganizationRole.hxx".}
proc setName*(this: var StepBasicPersonAndOrganizationRole;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_PersonAndOrganizationRole.hxx".}
proc name*(this: StepBasicPersonAndOrganizationRole): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "StepBasic_PersonAndOrganizationRole.hxx".}
type
  StepBasicPersonAndOrganizationRolebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_PersonAndOrganizationRole::get_type_name(@)",
                            header: "StepBasic_PersonAndOrganizationRole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_PersonAndOrganizationRole::get_type_descriptor(@)",
    header: "StepBasic_PersonAndOrganizationRole.hxx".}
proc dynamicType*(this: StepBasicPersonAndOrganizationRole): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_PersonAndOrganizationRole.hxx".}