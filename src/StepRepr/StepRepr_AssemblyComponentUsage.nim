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
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_AssemblyComponentUsage"
type
  HandleC1C1* = Handle[StepReprAssemblyComponentUsage]

## ! Representation of STEP entity AssemblyComponentUsage

type
  StepReprAssemblyComponentUsage* {.importcpp: "StepRepr_AssemblyComponentUsage", header: "StepRepr_AssemblyComponentUsage.hxx",
                                   bycopy.} = object of StepReprProductDefinitionUsage ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepReprAssemblyComponentUsage*(): StepReprAssemblyComponentUsage {.
    constructor, importcpp: "StepRepr_AssemblyComponentUsage(@)",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc init*(this: var StepReprAssemblyComponentUsage;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: Handle[
    StepBasicProductDefinition]; aProductDefinitionRelationshipRelatedProductDefinition: Handle[
    StepBasicProductDefinition]; hasReferenceDesignator: bool;
          aReferenceDesignator: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepRepr_AssemblyComponentUsage.hxx".}
proc init*(this: var StepReprAssemblyComponentUsage;
          aProductDefinitionRelationshipId: Handle[TCollectionHAsciiString];
          aProductDefinitionRelationshipName: Handle[TCollectionHAsciiString];
          hasProductDefinitionRelationshipDescription: bool;
    aProductDefinitionRelationshipDescription: Handle[TCollectionHAsciiString];
    aProductDefinitionRelationshipRelatingProductDefinition: StepBasicProductDefinitionOrReference;
    aProductDefinitionRelationshipRelatedProductDefinition: StepBasicProductDefinitionOrReference;
          hasReferenceDesignator: bool;
          aReferenceDesignator: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepRepr_AssemblyComponentUsage.hxx".}
proc referenceDesignator*(this: StepReprAssemblyComponentUsage): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ReferenceDesignator",
                              header: "StepRepr_AssemblyComponentUsage.hxx".}
proc setReferenceDesignator*(this: var StepReprAssemblyComponentUsage;
    referenceDesignator: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetReferenceDesignator",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc hasReferenceDesignator*(this: StepReprAssemblyComponentUsage): bool {.
    noSideEffect, importcpp: "HasReferenceDesignator",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
type
  StepReprAssemblyComponentUsagebaseType* = StepReprProductDefinitionUsage

proc getTypeName*(): cstring {.importcpp: "StepRepr_AssemblyComponentUsage::get_type_name(@)",
                            header: "StepRepr_AssemblyComponentUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_AssemblyComponentUsage::get_type_descriptor(@)",
    header: "StepRepr_AssemblyComponentUsage.hxx".}
proc dynamicType*(this: StepReprAssemblyComponentUsage): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_AssemblyComponentUsage.hxx".}

























