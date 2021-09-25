##  Created on: 2016-03-30
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepBasic_ProductDefinitionReference"
type
  HandleStepBasicProductDefinitionReference* = Handle[
      StepBasicProductDefinitionReference]

## ! Representation of STEP entity Product_Definition_Reference

type
  StepBasicProductDefinitionReference* {.importcpp: "StepBasic_ProductDefinitionReference", header: "StepBasic_ProductDefinitionReference.hxx",
                                        bycopy.} = object of StandardTransient ## ! Empty
                                                                          ## constructor


proc constructStepBasicProductDefinitionReference*(): StepBasicProductDefinitionReference {.
    constructor, importcpp: "StepBasic_ProductDefinitionReference(@)",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc init*(this: var StepBasicProductDefinitionReference;
          theSource: Handle[StepBasicExternalSource];
          theProductId: Handle[TCollectionHAsciiString];
          theProductDefinitionFormationId: Handle[TCollectionHAsciiString];
          theProductDefinitionId: Handle[TCollectionHAsciiString];
          theIdOwningOrganizationName: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionReference.hxx".}
proc init*(this: var StepBasicProductDefinitionReference;
          theSource: Handle[StepBasicExternalSource];
          theProductId: Handle[TCollectionHAsciiString];
          theProductDefinitionFormationId: Handle[TCollectionHAsciiString];
          theProductDefinitionId: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionReference.hxx".}
proc source*(this: StepBasicProductDefinitionReference): Handle[
    StepBasicExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ProductDefinitionReference.hxx".}
proc setSource*(this: var StepBasicProductDefinitionReference;
               theSource: Handle[StepBasicExternalSource]) {.
    importcpp: "SetSource", header: "StepBasic_ProductDefinitionReference.hxx".}
proc productId*(this: StepBasicProductDefinitionReference): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ProductId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc setProductId*(this: var StepBasicProductDefinitionReference;
                  theProductId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetProductId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc productDefinitionFormationId*(this: StepBasicProductDefinitionReference): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ProductDefinitionFormationId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc setProductDefinitionFormationId*(this: var StepBasicProductDefinitionReference;
    theProductDefinitionFormationId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetProductDefinitionFormationId",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc productDefinitionId*(this: StepBasicProductDefinitionReference): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ProductDefinitionId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc setProductDefinitionId*(this: var StepBasicProductDefinitionReference;
    theProductDefinitionId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetProductDefinitionId",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc idOwningOrganizationName*(this: StepBasicProductDefinitionReference): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "IdOwningOrganizationName", header: "StepBasic_ProductDefinitionReference.hxx".}
proc setIdOwningOrganizationName*(this: var StepBasicProductDefinitionReference;
    theIdOwningOrganizationName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetIdOwningOrganizationName",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc hasIdOwningOrganizationName*(this: StepBasicProductDefinitionReference): bool {.
    noSideEffect, importcpp: "HasIdOwningOrganizationName",
    header: "StepBasic_ProductDefinitionReference.hxx".}
type
  StepBasicProductDefinitionReferencebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionReference::get_type_name(@)",
                            header: "StepBasic_ProductDefinitionReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductDefinitionReference::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionReference.hxx".}
