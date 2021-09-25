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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_Group"
type
  HandleStepBasicGroup* = Handle[StepBasicGroup]

## ! Representation of STEP entity Group

type
  StepBasicGroup* {.importcpp: "StepBasic_Group", header: "StepBasic_Group.hxx",
                   bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicGroup*(): StepBasicGroup {.constructor,
    importcpp: "StepBasic_Group(@)", header: "StepBasic_Group.hxx".}
proc init*(this: var StepBasicGroup; aName: Handle[TCollectionHAsciiString];
          hasDescription: bool; aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Group.hxx".}
proc name*(this: StepBasicGroup): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Group.hxx".}
proc setName*(this: var StepBasicGroup; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Group.hxx".}
proc description*(this: StepBasicGroup): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Group.hxx".}
proc setDescription*(this: var StepBasicGroup;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Group.hxx".}
proc hasDescription*(this: StepBasicGroup): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Group.hxx".}
type
  StepBasicGroupbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Group::get_type_name(@)",
                            header: "StepBasic_Group.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Group::get_type_descriptor(@)",
    header: "StepBasic_Group.hxx".}
proc dynamicType*(this: StepBasicGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Group.hxx".}
