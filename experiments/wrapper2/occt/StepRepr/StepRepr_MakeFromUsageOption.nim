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
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_MakeFromUsageOption"
discard "forward decl of StepRepr_MakeFromUsageOption"
type
  HandleStepReprMakeFromUsageOption* = Handle[StepReprMakeFromUsageOption]

## ! Representation of STEP entity MakeFromUsageOption

type
  StepReprMakeFromUsageOption* {.importcpp: "StepRepr_MakeFromUsageOption",
                                header: "StepRepr_MakeFromUsageOption.hxx", bycopy.} = object of StepReprProductDefinitionUsage ##
                                                                                                                         ## !
                                                                                                                         ## Empty
                                                                                                                         ## constructor


proc constructStepReprMakeFromUsageOption*(): StepReprMakeFromUsageOption {.
    constructor, importcpp: "StepRepr_MakeFromUsageOption(@)",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc init*(this: var StepReprMakeFromUsageOption;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: Handle[
    StepBasicProductDefinition]; aProductDefinitionRelationshipRelatedProductDefinition: Handle[
    StepBasicProductDefinition]; aRanking: int;
          aRankingRationale: Handle[TCollectionHAsciiString];
          aQuantity: Handle[StepBasicMeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc init*(this: var StepReprMakeFromUsageOption;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: StepBasicProductDefinitionOrReference;
    aProductDefinitionRelationshipRelatedProductDefinition: StepBasicProductDefinitionOrReference;
          aRanking: int; aRankingRationale: Handle[TCollectionHAsciiString];
          aQuantity: Handle[StepBasicMeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc ranking*(this: StepReprMakeFromUsageOption): int {.noSideEffect,
    importcpp: "Ranking", header: "StepRepr_MakeFromUsageOption.hxx".}
proc setRanking*(this: var StepReprMakeFromUsageOption; ranking: int) {.
    importcpp: "SetRanking", header: "StepRepr_MakeFromUsageOption.hxx".}
proc rankingRationale*(this: StepReprMakeFromUsageOption): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "RankingRationale",
                              header: "StepRepr_MakeFromUsageOption.hxx".}
proc setRankingRationale*(this: var StepReprMakeFromUsageOption;
                         rankingRationale: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetRankingRationale", header: "StepRepr_MakeFromUsageOption.hxx".}
proc quantity*(this: StepReprMakeFromUsageOption): Handle[StepBasicMeasureWithUnit] {.
    noSideEffect, importcpp: "Quantity", header: "StepRepr_MakeFromUsageOption.hxx".}
proc setQuantity*(this: var StepReprMakeFromUsageOption;
                 quantity: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetQuantity", header: "StepRepr_MakeFromUsageOption.hxx".}
type
  StepReprMakeFromUsageOptionbaseType* = StepReprProductDefinitionUsage

proc getTypeName*(): cstring {.importcpp: "StepRepr_MakeFromUsageOption::get_type_name(@)",
                            header: "StepRepr_MakeFromUsageOption.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_MakeFromUsageOption::get_type_descriptor(@)",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc dynamicType*(this: StepReprMakeFromUsageOption): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MakeFromUsageOption.hxx".}
