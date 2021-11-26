##  Created on: 2000-07-03
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
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionRelationship]

## ! Representation of STEP entity ProductDefinitionRelationship

type
  StepBasicProductDefinitionRelationship* {.
      importcpp: "StepBasic_ProductDefinitionRelationship",
      header: "StepBasic_ProductDefinitionRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepBasicProductDefinitionRelationship*(): StepBasicProductDefinitionRelationship {.
    constructor, importcpp: "StepBasic_ProductDefinitionRelationship(@)",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc init*(this: var StepBasicProductDefinitionRelationship;
          aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingProductDefinition: Handle[StepBasicProductDefinition];
          aRelatedProductDefinition: Handle[StepBasicProductDefinition]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc init*(this: var StepBasicProductDefinitionRelationship;
          aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingProductDefinition: StepBasicProductDefinitionOrReference;
          aRelatedProductDefinition: StepBasicProductDefinitionOrReference) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc id*(this: StepBasicProductDefinitionRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setId*(this: var StepBasicProductDefinitionRelationship;
           id: Handle[TCollectionHAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc name*(this: StepBasicProductDefinitionRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setName*(this: var StepBasicProductDefinitionRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc description*(this: StepBasicProductDefinitionRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setDescription*(this: var StepBasicProductDefinitionRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc hasDescription*(this: StepBasicProductDefinitionRelationship): StandardBoolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc relatingProductDefinition*(this: StepBasicProductDefinitionRelationship): Handle[
    StepBasicProductDefinition] {.noSideEffect,
                                 importcpp: "RelatingProductDefinition", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc relatingProductDefinitionAP242*(this: StepBasicProductDefinitionRelationship): StepBasicProductDefinitionOrReference {.
    noSideEffect, importcpp: "RelatingProductDefinitionAP242",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setRelatingProductDefinition*(this: var StepBasicProductDefinitionRelationship;
    relatingProductDefinition: Handle[StepBasicProductDefinition]) {.
    importcpp: "SetRelatingProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setRelatingProductDefinition*(this: var StepBasicProductDefinitionRelationship;
    relatingProductDefinition: StepBasicProductDefinitionOrReference) {.
    importcpp: "SetRelatingProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc relatedProductDefinition*(this: StepBasicProductDefinitionRelationship): Handle[
    StepBasicProductDefinition] {.noSideEffect,
                                 importcpp: "RelatedProductDefinition", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc relatedProductDefinitionAP242*(this: StepBasicProductDefinitionRelationship): StepBasicProductDefinitionOrReference {.
    noSideEffect, importcpp: "RelatedProductDefinitionAP242",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setRelatedProductDefinition*(this: var StepBasicProductDefinitionRelationship;
    relatedProductDefinition: Handle[StepBasicProductDefinition]) {.
    importcpp: "SetRelatedProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc setRelatedProductDefinition*(this: var StepBasicProductDefinitionRelationship;
    relatedProductDefinition: StepBasicProductDefinitionOrReference) {.
    importcpp: "SetRelatedProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
type
  StepBasicProductDefinitionRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionRelationship::get_type_name(@)", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ProductDefinitionRelationship.hxx".}