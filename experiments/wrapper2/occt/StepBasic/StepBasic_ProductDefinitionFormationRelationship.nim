##  Created on: 2002-12-15
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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionFormationRelationship]

## ! Representation of STEP entity ProductDefinitionFormationRelationship

type
  StepBasicProductDefinitionFormationRelationship* {.
      importcpp: "StepBasic_ProductDefinitionFormationRelationship",
      header: "StepBasic_ProductDefinitionFormationRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasicProductDefinitionFormationRelationship*(): StepBasicProductDefinitionFormationRelationship {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionFormationRelationship(@)",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc init*(this: var StepBasicProductDefinitionFormationRelationship;
          aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
    aRelatingProductDefinitionFormation: Handle[
    StepBasicProductDefinitionFormation]; aRelatedProductDefinitionFormation: Handle[
    StepBasicProductDefinitionFormation]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc id*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc setId*(this: var StepBasicProductDefinitionFormationRelationship;
           id: Handle[TCollectionHAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc name*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc setName*(this: var StepBasicProductDefinitionFormationRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc description*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc setDescription*(this: var StepBasicProductDefinitionFormationRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc relatingProductDefinitionFormation*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "RelatingProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc setRelatingProductDefinitionFormation*(
    this: var StepBasicProductDefinitionFormationRelationship;
    relatingProductDefinitionFormation: Handle[
    StepBasicProductDefinitionFormation]) {.
    importcpp: "SetRelatingProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc relatedProductDefinitionFormation*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "RelatedProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc setRelatedProductDefinitionFormation*(
    this: var StepBasicProductDefinitionFormationRelationship;
    relatedProductDefinitionFormation: Handle[StepBasicProductDefinitionFormation]) {.
    importcpp: "SetRelatedProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
type
  StepBasicProductDefinitionFormationRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormationRelationship::get_type_name(@)", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionFormationRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionFormationRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}

























