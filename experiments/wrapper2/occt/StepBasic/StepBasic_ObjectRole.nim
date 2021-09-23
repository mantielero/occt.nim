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
discard "forward decl of StepBasic_ObjectRole"
discard "forward decl of StepBasic_ObjectRole"
type
  Handle_StepBasic_ObjectRole* = handle[StepBasic_ObjectRole]

## ! Representation of STEP entity ObjectRole

type
  StepBasic_ObjectRole* {.importcpp: "StepBasic_ObjectRole",
                         header: "StepBasic_ObjectRole.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepBasic_ObjectRole*(): StepBasic_ObjectRole {.constructor,
    importcpp: "StepBasic_ObjectRole(@)", header: "StepBasic_ObjectRole.hxx".}
proc Init*(this: var StepBasic_ObjectRole; aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ObjectRole.hxx".}
proc Name*(this: StepBasic_ObjectRole): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ObjectRole.hxx".}
proc SetName*(this: var StepBasic_ObjectRole; Name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_ObjectRole.hxx".}
proc Description*(this: StepBasic_ObjectRole): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ObjectRole.hxx".}
proc SetDescription*(this: var StepBasic_ObjectRole;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ObjectRole.hxx".}
proc HasDescription*(this: StepBasic_ObjectRole): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_ObjectRole.hxx".}
type
  StepBasic_ObjectRolebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ObjectRole::get_type_name(@)",
                              header: "StepBasic_ObjectRole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ObjectRole::get_type_descriptor(@)",
    header: "StepBasic_ObjectRole.hxx".}
proc DynamicType*(this: StepBasic_ObjectRole): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_ObjectRole.hxx".}