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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_IdentificationRole"
type
  Handle_StepBasic_IdentificationRole* = handle[StepBasic_IdentificationRole]

## ! Representation of STEP entity IdentificationRole

type
  StepBasic_IdentificationRole* {.importcpp: "StepBasic_IdentificationRole",
                                 header: "StepBasic_IdentificationRole.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepBasic_IdentificationRole*(): StepBasic_IdentificationRole {.
    constructor, importcpp: "StepBasic_IdentificationRole(@)",
    header: "StepBasic_IdentificationRole.hxx".}
proc Init*(this: var StepBasic_IdentificationRole;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_IdentificationRole.hxx".}
proc Name*(this: StepBasic_IdentificationRole): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_IdentificationRole.hxx".}
proc SetName*(this: var StepBasic_IdentificationRole;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_IdentificationRole.hxx".}
proc Description*(this: StepBasic_IdentificationRole): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_IdentificationRole.hxx".}
proc SetDescription*(this: var StepBasic_IdentificationRole;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_IdentificationRole.hxx".}
proc HasDescription*(this: StepBasic_IdentificationRole): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_IdentificationRole.hxx".}
type
  StepBasic_IdentificationRolebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_IdentificationRole::get_type_name(@)",
                              header: "StepBasic_IdentificationRole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_IdentificationRole::get_type_descriptor(@)",
    header: "StepBasic_IdentificationRole.hxx".}
proc DynamicType*(this: StepBasic_IdentificationRole): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_IdentificationRole.hxx".}