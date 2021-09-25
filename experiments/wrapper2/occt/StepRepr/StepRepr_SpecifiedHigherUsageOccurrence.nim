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

discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_SpecifiedHigherUsageOccurrence"
discard "forward decl of StepRepr_SpecifiedHigherUsageOccurrence"
type
  HandleStepReprSpecifiedHigherUsageOccurrence* = Handle[
      StepReprSpecifiedHigherUsageOccurrence]

## ! Representation of STEP entity SpecifiedHigherUsageOccurrence

type
  StepReprSpecifiedHigherUsageOccurrence* {.
      importcpp: "StepRepr_SpecifiedHigherUsageOccurrence",
      header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx", bycopy.} = object of StepReprAssemblyComponentUsage ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepReprSpecifiedHigherUsageOccurrence*(): StepReprSpecifiedHigherUsageOccurrence {.
    constructor, importcpp: "StepRepr_SpecifiedHigherUsageOccurrence(@)",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc init*(this: var StepReprSpecifiedHigherUsageOccurrence;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: Handle[
    StepBasicProductDefinition]; aProductDefinitionRelationshipRelatedProductDefinition: Handle[
    StepBasicProductDefinition];
          hasAssemblyComponentUsageReferenceDesignator: bool;
    aAssemblyComponentUsageReferenceDesignator: Handle[TCollectionHAsciiString];
          aUpperUsage: Handle[StepReprAssemblyComponentUsage];
          aNextUsage: Handle[StepReprNextAssemblyUsageOccurrence]) {.
    importcpp: "Init", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc init*(this: var StepReprSpecifiedHigherUsageOccurrence;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: StepBasicProductDefinitionOrReference;
    aProductDefinitionRelationshipRelatedProductDefinition: StepBasicProductDefinitionOrReference;
          hasAssemblyComponentUsageReferenceDesignator: bool;
    aAssemblyComponentUsageReferenceDesignator: Handle[TCollectionHAsciiString];
          aUpperUsage: Handle[StepReprAssemblyComponentUsage];
          aNextUsage: Handle[StepReprNextAssemblyUsageOccurrence]) {.
    importcpp: "Init", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc upperUsage*(this: StepReprSpecifiedHigherUsageOccurrence): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect, importcpp: "UpperUsage", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc setUpperUsage*(this: var StepReprSpecifiedHigherUsageOccurrence;
                   upperUsage: Handle[StepReprAssemblyComponentUsage]) {.
    importcpp: "SetUpperUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc nextUsage*(this: StepReprSpecifiedHigherUsageOccurrence): Handle[
    StepReprNextAssemblyUsageOccurrence] {.noSideEffect, importcpp: "NextUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc setNextUsage*(this: var StepReprSpecifiedHigherUsageOccurrence;
                  nextUsage: Handle[StepReprNextAssemblyUsageOccurrence]) {.
    importcpp: "SetNextUsage",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
type
  StepReprSpecifiedHigherUsageOccurrencebaseType* = StepReprAssemblyComponentUsage

proc getTypeName*(): cstring {.importcpp: "StepRepr_SpecifiedHigherUsageOccurrence::get_type_name(@)", header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_SpecifiedHigherUsageOccurrence::get_type_descriptor(@)",
    header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
proc dynamicType*(this: StepReprSpecifiedHigherUsageOccurrence): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_SpecifiedHigherUsageOccurrence.hxx".}
