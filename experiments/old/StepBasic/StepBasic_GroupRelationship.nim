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
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepBasic_GroupRelationship"
type
  HandleC1C1* = Handle[StepBasicGroupRelationship]

## ! Representation of STEP entity GroupRelationship

type
  StepBasicGroupRelationship* {.importcpp: "StepBasic_GroupRelationship",
                               header: "StepBasic_GroupRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepBasicGroupRelationship*(): StepBasicGroupRelationship {.
    constructor, importcpp: "StepBasic_GroupRelationship(@)",
    header: "StepBasic_GroupRelationship.hxx".}
proc init*(this: var StepBasicGroupRelationship;
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingGroup: Handle[StepBasicGroup];
          aRelatedGroup: Handle[StepBasicGroup]) {.importcpp: "Init",
    header: "StepBasic_GroupRelationship.hxx".}
proc name*(this: StepBasicGroupRelationship): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_GroupRelationship.hxx".}
proc setName*(this: var StepBasicGroupRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_GroupRelationship.hxx".}
proc description*(this: StepBasicGroupRelationship): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepBasic_GroupRelationship.hxx".}
proc setDescription*(this: var StepBasicGroupRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_GroupRelationship.hxx".}
proc hasDescription*(this: StepBasicGroupRelationship): StandardBoolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_GroupRelationship.hxx".}
proc relatingGroup*(this: StepBasicGroupRelationship): Handle[StepBasicGroup] {.
    noSideEffect, importcpp: "RelatingGroup",
    header: "StepBasic_GroupRelationship.hxx".}
proc setRelatingGroup*(this: var StepBasicGroupRelationship;
                      relatingGroup: Handle[StepBasicGroup]) {.
    importcpp: "SetRelatingGroup", header: "StepBasic_GroupRelationship.hxx".}
proc relatedGroup*(this: StepBasicGroupRelationship): Handle[StepBasicGroup] {.
    noSideEffect, importcpp: "RelatedGroup",
    header: "StepBasic_GroupRelationship.hxx".}
proc setRelatedGroup*(this: var StepBasicGroupRelationship;
                     relatedGroup: Handle[StepBasicGroup]) {.
    importcpp: "SetRelatedGroup", header: "StepBasic_GroupRelationship.hxx".}
type
  StepBasicGroupRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_GroupRelationship::get_type_name(@)",
                            header: "StepBasic_GroupRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_GroupRelationship::get_type_descriptor(@)",
    header: "StepBasic_GroupRelationship.hxx".}
proc dynamicType*(this: StepBasicGroupRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_GroupRelationship.hxx".}