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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  StepRepr_ProductDefinitionUsage, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_MakeFromUsageOption"
discard "forward decl of StepRepr_MakeFromUsageOption"
type
  Handle_StepRepr_MakeFromUsageOption* = handle[StepRepr_MakeFromUsageOption]

## ! Representation of STEP entity MakeFromUsageOption

type
  StepRepr_MakeFromUsageOption* {.importcpp: "StepRepr_MakeFromUsageOption",
                                 header: "StepRepr_MakeFromUsageOption.hxx",
                                 bycopy.} = object of StepRepr_ProductDefinitionUsage ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructStepRepr_MakeFromUsageOption*(): StepRepr_MakeFromUsageOption {.
    constructor, importcpp: "StepRepr_MakeFromUsageOption(@)",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc Init*(this: var StepRepr_MakeFromUsageOption;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: handle[
    StepBasic_ProductDefinition]; aProductDefinitionRelationship_RelatedProductDefinition: handle[
    StepBasic_ProductDefinition]; aRanking: Standard_Integer;
          aRankingRationale: handle[TCollection_HAsciiString];
          aQuantity: handle[StepBasic_MeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc Init*(this: var StepRepr_MakeFromUsageOption;
          aProductDefinitionRelationship_Id: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_Name: handle[TCollection_HAsciiString];
          hasProductDefinitionRelationship_Description: Standard_Boolean;
    aProductDefinitionRelationship_Description: handle[TCollection_HAsciiString];
    aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference;
    aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference;
          aRanking: Standard_Integer;
          aRankingRationale: handle[TCollection_HAsciiString];
          aQuantity: handle[StepBasic_MeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc Ranking*(this: StepRepr_MakeFromUsageOption): Standard_Integer {.noSideEffect,
    importcpp: "Ranking", header: "StepRepr_MakeFromUsageOption.hxx".}
proc SetRanking*(this: var StepRepr_MakeFromUsageOption; Ranking: Standard_Integer) {.
    importcpp: "SetRanking", header: "StepRepr_MakeFromUsageOption.hxx".}
proc RankingRationale*(this: StepRepr_MakeFromUsageOption): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "RankingRationale",
                               header: "StepRepr_MakeFromUsageOption.hxx".}
proc SetRankingRationale*(this: var StepRepr_MakeFromUsageOption;
                         RankingRationale: handle[TCollection_HAsciiString]) {.
    importcpp: "SetRankingRationale", header: "StepRepr_MakeFromUsageOption.hxx".}
proc Quantity*(this: StepRepr_MakeFromUsageOption): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "Quantity",
                                header: "StepRepr_MakeFromUsageOption.hxx".}
proc SetQuantity*(this: var StepRepr_MakeFromUsageOption;
                 Quantity: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetQuantity", header: "StepRepr_MakeFromUsageOption.hxx".}
type
  StepRepr_MakeFromUsageOptionbase_type* = StepRepr_ProductDefinitionUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_MakeFromUsageOption::get_type_name(@)",
                              header: "StepRepr_MakeFromUsageOption.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_MakeFromUsageOption::get_type_descriptor(@)",
    header: "StepRepr_MakeFromUsageOption.hxx".}
proc DynamicType*(this: StepRepr_MakeFromUsageOption): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MakeFromUsageOption.hxx".}