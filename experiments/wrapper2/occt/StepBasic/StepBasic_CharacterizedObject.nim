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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepBasic_CharacterizedObject"
type
  Handle_StepBasic_CharacterizedObject* = handle[StepBasic_CharacterizedObject]

## ! Representation of STEP entity CharacterizedObject

type
  StepBasic_CharacterizedObject* {.importcpp: "StepBasic_CharacterizedObject",
                                  header: "StepBasic_CharacterizedObject.hxx",
                                  bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepBasic_CharacterizedObject*(): StepBasic_CharacterizedObject {.
    constructor, importcpp: "StepBasic_CharacterizedObject(@)",
    header: "StepBasic_CharacterizedObject.hxx".}
proc Init*(this: var StepBasic_CharacterizedObject;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_CharacterizedObject.hxx".}
proc Name*(this: StepBasic_CharacterizedObject): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_CharacterizedObject.hxx".}
proc SetName*(this: var StepBasic_CharacterizedObject;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_CharacterizedObject.hxx".}
proc Description*(this: StepBasic_CharacterizedObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_CharacterizedObject.hxx".}
proc SetDescription*(this: var StepBasic_CharacterizedObject;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_CharacterizedObject.hxx".}
proc HasDescription*(this: StepBasic_CharacterizedObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_CharacterizedObject.hxx".}
type
  StepBasic_CharacterizedObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_CharacterizedObject::get_type_name(@)",
                              header: "StepBasic_CharacterizedObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_CharacterizedObject::get_type_descriptor(@)",
    header: "StepBasic_CharacterizedObject.hxx".}
proc DynamicType*(this: StepBasic_CharacterizedObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CharacterizedObject.hxx".}