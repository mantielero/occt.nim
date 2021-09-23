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
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_Group"
type
  Handle_StepBasic_Group* = handle[StepBasic_Group]

## ! Representation of STEP entity Group

type
  StepBasic_Group* {.importcpp: "StepBasic_Group", header: "StepBasic_Group.hxx",
                    bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepBasic_Group*(): StepBasic_Group {.constructor,
    importcpp: "StepBasic_Group(@)", header: "StepBasic_Group.hxx".}
proc Init*(this: var StepBasic_Group; aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Group.hxx".}
proc Name*(this: StepBasic_Group): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Group.hxx".}
proc SetName*(this: var StepBasic_Group; Name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Group.hxx".}
proc Description*(this: StepBasic_Group): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Group.hxx".}
proc SetDescription*(this: var StepBasic_Group;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Group.hxx".}
proc HasDescription*(this: StepBasic_Group): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Group.hxx".}
type
  StepBasic_Groupbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Group::get_type_name(@)",
                              header: "StepBasic_Group.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Group::get_type_descriptor(@)",
    header: "StepBasic_Group.hxx".}
proc DynamicType*(this: StepBasic_Group): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Group.hxx".}