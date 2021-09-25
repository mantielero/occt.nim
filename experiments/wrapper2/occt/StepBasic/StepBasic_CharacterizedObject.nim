##  Created on: 2000-05-11
##  Created by: data exchange team
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
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepBasic_CharacterizedObject"
type
  HandleStepBasicCharacterizedObject* = Handle[StepBasicCharacterizedObject]

## ! Representation of STEP entity CharacterizedObject

type
  StepBasicCharacterizedObject* {.importcpp: "StepBasic_CharacterizedObject",
                                 header: "StepBasic_CharacterizedObject.hxx",
                                 bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicCharacterizedObject*(): StepBasicCharacterizedObject {.
    constructor, importcpp: "StepBasic_CharacterizedObject(@)",
    header: "StepBasic_CharacterizedObject.hxx".}
proc init*(this: var StepBasicCharacterizedObject;
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_CharacterizedObject.hxx".}
proc name*(this: StepBasicCharacterizedObject): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_CharacterizedObject.hxx".}
proc setName*(this: var StepBasicCharacterizedObject;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_CharacterizedObject.hxx".}
proc description*(this: StepBasicCharacterizedObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_CharacterizedObject.hxx".}
proc setDescription*(this: var StepBasicCharacterizedObject;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_CharacterizedObject.hxx".}
proc hasDescription*(this: StepBasicCharacterizedObject): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_CharacterizedObject.hxx".}
type
  StepBasicCharacterizedObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_CharacterizedObject::get_type_name(@)",
                            header: "StepBasic_CharacterizedObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_CharacterizedObject::get_type_descriptor(@)",
    header: "StepBasic_CharacterizedObject.hxx".}
proc dynamicType*(this: StepBasicCharacterizedObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CharacterizedObject.hxx".}
