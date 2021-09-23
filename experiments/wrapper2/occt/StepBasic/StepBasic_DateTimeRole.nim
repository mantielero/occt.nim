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
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepBasic_DateTimeRole"
type
  Handle_StepBasic_DateTimeRole* = handle[StepBasic_DateTimeRole]
  StepBasic_DateTimeRole* {.importcpp: "StepBasic_DateTimeRole",
                           header: "StepBasic_DateTimeRole.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## DateTimeRole


proc constructStepBasic_DateTimeRole*(): StepBasic_DateTimeRole {.constructor,
    importcpp: "StepBasic_DateTimeRole(@)", header: "StepBasic_DateTimeRole.hxx".}
proc Init*(this: var StepBasic_DateTimeRole; aName: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_DateTimeRole.hxx".}
proc SetName*(this: var StepBasic_DateTimeRole;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DateTimeRole.hxx".}
proc Name*(this: StepBasic_DateTimeRole): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_DateTimeRole.hxx".}
type
  StepBasic_DateTimeRolebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DateTimeRole::get_type_name(@)",
                              header: "StepBasic_DateTimeRole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DateTimeRole::get_type_descriptor(@)",
    header: "StepBasic_DateTimeRole.hxx".}
proc DynamicType*(this: StepBasic_DateTimeRole): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DateTimeRole.hxx".}