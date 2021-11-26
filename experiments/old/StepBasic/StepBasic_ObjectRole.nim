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
discard "forward decl of StepBasic_ObjectRole"
discard "forward decl of StepBasic_ObjectRole"
type
  HandleC1C1* = Handle[StepBasicObjectRole]

## ! Representation of STEP entity ObjectRole

type
  StepBasicObjectRole* {.importcpp: "StepBasic_ObjectRole",
                        header: "StepBasic_ObjectRole.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepBasicObjectRole*(): StepBasicObjectRole {.constructor,
    importcpp: "StepBasic_ObjectRole(@)", header: "StepBasic_ObjectRole.hxx".}
proc init*(this: var StepBasicObjectRole; aName: Handle[TCollectionHAsciiString];
          hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ObjectRole.hxx".}
proc name*(this: StepBasicObjectRole): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ObjectRole.hxx".}
proc setName*(this: var StepBasicObjectRole; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_ObjectRole.hxx".}
proc description*(this: StepBasicObjectRole): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ObjectRole.hxx".}
proc setDescription*(this: var StepBasicObjectRole;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ObjectRole.hxx".}
proc hasDescription*(this: StepBasicObjectRole): StandardBoolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_ObjectRole.hxx".}
type
  StepBasicObjectRolebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ObjectRole::get_type_name(@)",
                            header: "StepBasic_ObjectRole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ObjectRole::get_type_descriptor(@)",
    header: "StepBasic_ObjectRole.hxx".}
proc dynamicType*(this: StepBasicObjectRole): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_ObjectRole.hxx".}