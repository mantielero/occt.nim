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
discard "forward decl of StepBasic_OrganizationRole"
discard "forward decl of StepBasic_OrganizationRole"
type
  HandleStepBasicOrganizationRole* = Handle[StepBasicOrganizationRole]
  StepBasicOrganizationRole* {.importcpp: "StepBasic_OrganizationRole",
                              header: "StepBasic_OrganizationRole.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## OrganizationRole


proc constructStepBasicOrganizationRole*(): StepBasicOrganizationRole {.
    constructor, importcpp: "StepBasic_OrganizationRole(@)",
    header: "StepBasic_OrganizationRole.hxx".}
proc init*(this: var StepBasicOrganizationRole;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_OrganizationRole.hxx".}
proc setName*(this: var StepBasicOrganizationRole;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_OrganizationRole.hxx".}
proc name*(this: StepBasicOrganizationRole): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_OrganizationRole.hxx".}
type
  StepBasicOrganizationRolebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_OrganizationRole::get_type_name(@)",
                            header: "StepBasic_OrganizationRole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_OrganizationRole::get_type_descriptor(@)",
    header: "StepBasic_OrganizationRole.hxx".}
proc dynamicType*(this: StepBasicOrganizationRole): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_OrganizationRole.hxx".}
