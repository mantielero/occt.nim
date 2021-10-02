##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
type
  HandleC1C1* = Handle[StepReprPropertyDefinitionRelationship]

## ! Representation of STEP entity PropertyDefinitionRelationship

type
  StepReprPropertyDefinitionRelationship* {.
      importcpp: "StepRepr_PropertyDefinitionRelationship",
      header: "StepRepr_PropertyDefinitionRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepReprPropertyDefinitionRelationship*(): StepReprPropertyDefinitionRelationship {.
    constructor, importcpp: "StepRepr_PropertyDefinitionRelationship(@)",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc init*(this: var StepReprPropertyDefinitionRelationship;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingPropertyDefinition: Handle[StepReprPropertyDefinition];
          aRelatedPropertyDefinition: Handle[StepReprPropertyDefinition]) {.
    importcpp: "Init", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc name*(this: StepReprPropertyDefinitionRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc setName*(this: var StepReprPropertyDefinitionRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc description*(this: StepReprPropertyDefinitionRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc setDescription*(this: var StepReprPropertyDefinitionRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc relatingPropertyDefinition*(this: StepReprPropertyDefinitionRelationship): Handle[
    StepReprPropertyDefinition] {.noSideEffect,
                                 importcpp: "RelatingPropertyDefinition", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc setRelatingPropertyDefinition*(this: var StepReprPropertyDefinitionRelationship;
    relatingPropertyDefinition: Handle[StepReprPropertyDefinition]) {.
    importcpp: "SetRelatingPropertyDefinition",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc relatedPropertyDefinition*(this: StepReprPropertyDefinitionRelationship): Handle[
    StepReprPropertyDefinition] {.noSideEffect,
                                 importcpp: "RelatedPropertyDefinition", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc setRelatedPropertyDefinition*(this: var StepReprPropertyDefinitionRelationship;
    relatedPropertyDefinition: Handle[StepReprPropertyDefinition]) {.
    importcpp: "SetRelatedPropertyDefinition",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
type
  StepReprPropertyDefinitionRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_PropertyDefinitionRelationship::get_type_name(@)", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_PropertyDefinitionRelationship::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc dynamicType*(this: StepReprPropertyDefinitionRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_PropertyDefinitionRelationship.hxx".}