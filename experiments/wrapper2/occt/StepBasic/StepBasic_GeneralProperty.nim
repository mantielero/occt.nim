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
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepBasic_GeneralProperty"
type
  HandleStepBasicGeneralProperty* = Handle[StepBasicGeneralProperty]

## ! Representation of STEP entity GeneralProperty

type
  StepBasicGeneralProperty* {.importcpp: "StepBasic_GeneralProperty",
                             header: "StepBasic_GeneralProperty.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasicGeneralProperty*(): StepBasicGeneralProperty {.constructor,
    importcpp: "StepBasic_GeneralProperty(@)",
    header: "StepBasic_GeneralProperty.hxx".}
proc init*(this: var StepBasicGeneralProperty; aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_GeneralProperty.hxx".}
proc id*(this: StepBasicGeneralProperty): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_GeneralProperty.hxx".}
proc setId*(this: var StepBasicGeneralProperty; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_GeneralProperty.hxx".}
proc name*(this: StepBasicGeneralProperty): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_GeneralProperty.hxx".}
proc setName*(this: var StepBasicGeneralProperty;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_GeneralProperty.hxx".}
proc description*(this: StepBasicGeneralProperty): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_GeneralProperty.hxx".}
proc setDescription*(this: var StepBasicGeneralProperty;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_GeneralProperty.hxx".}
proc hasDescription*(this: StepBasicGeneralProperty): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_GeneralProperty.hxx".}
type
  StepBasicGeneralPropertybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_GeneralProperty::get_type_name(@)",
                            header: "StepBasic_GeneralProperty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_GeneralProperty::get_type_descriptor(@)",
    header: "StepBasic_GeneralProperty.hxx".}
proc dynamicType*(this: StepBasicGeneralProperty): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_GeneralProperty.hxx".}
