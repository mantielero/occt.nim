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

discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
discard "forward decl of StepRepr_QuantifiedAssemblyComponentUsage"
type
  HandleC1C1* = Handle[StepReprQuantifiedAssemblyComponentUsage]

## ! Representation of STEP entity QuantifiedAssemblyComponentUsage

type
  StepReprQuantifiedAssemblyComponentUsage* {.
      importcpp: "StepRepr_QuantifiedAssemblyComponentUsage",
      header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx", bycopy.} = object of StepReprAssemblyComponentUsage ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepReprQuantifiedAssemblyComponentUsage*(): StepReprQuantifiedAssemblyComponentUsage {.
    constructor, importcpp: "StepRepr_QuantifiedAssemblyComponentUsage(@)",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc init*(this: var StepReprQuantifiedAssemblyComponentUsage;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: StandardBoolean;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: Handle[
    StepBasicProductDefinition]; aProductDefinitionRelationshipRelatedProductDefinition: Handle[
    StepBasicProductDefinition];
          hasAssemblyComponentUsageReferenceDesignator: StandardBoolean;
    aAssemblyComponentUsageReferenceDesignator: Handle[TCollectionHAsciiString];
          aQuantity: Handle[StepBasicMeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc init*(this: var StepReprQuantifiedAssemblyComponentUsage;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: StandardBoolean;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: StepBasicProductDefinitionOrReference;
    aProductDefinitionRelationshipRelatedProductDefinition: StepBasicProductDefinitionOrReference;
          hasAssemblyComponentUsageReferenceDesignator: StandardBoolean;
    aAssemblyComponentUsageReferenceDesignator: Handle[TCollectionHAsciiString];
          aQuantity: Handle[StepBasicMeasureWithUnit]) {.importcpp: "Init",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc quantity*(this: StepReprQuantifiedAssemblyComponentUsage): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "Quantity", header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc setQuantity*(this: var StepReprQuantifiedAssemblyComponentUsage;
                 quantity: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetQuantity",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
type
  StepReprQuantifiedAssemblyComponentUsagebaseType* = StepReprAssemblyComponentUsage

proc getTypeName*(): cstring {.importcpp: "StepRepr_QuantifiedAssemblyComponentUsage::get_type_name(@)", header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_QuantifiedAssemblyComponentUsage::get_type_descriptor(@)",
    header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}
proc dynamicType*(this: StepReprQuantifiedAssemblyComponentUsage): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_QuantifiedAssemblyComponentUsage.hxx".}