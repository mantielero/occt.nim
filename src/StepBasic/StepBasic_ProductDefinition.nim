##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinition"
type
  HandleC1C1* = Handle[StepBasicProductDefinition]
  StepBasicProductDefinition* {.importcpp: "StepBasic_ProductDefinition",
                               header: "StepBasic_ProductDefinition.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ProductDefinition


proc constructStepBasicProductDefinition*(): StepBasicProductDefinition {.
    constructor, importcpp: "StepBasic_ProductDefinition(@)",
    header: "StepBasic_ProductDefinition.hxx".}
proc init*(this: var StepBasicProductDefinition;
          aId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aFormation: Handle[StepBasicProductDefinitionFormation];
          aFrameOfReference: Handle[StepBasicProductDefinitionContext]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinition.hxx".}
proc setId*(this: var StepBasicProductDefinition;
           aId: Handle[TCollectionHAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinition.hxx".}
proc id*(this: StepBasicProductDefinition): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinition.hxx".}
proc setDescription*(this: var StepBasicProductDefinition;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ProductDefinition.hxx".}
proc description*(this: StepBasicProductDefinition): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepBasic_ProductDefinition.hxx".}
proc setFormation*(this: var StepBasicProductDefinition;
                  aFormation: Handle[StepBasicProductDefinitionFormation]) {.
    importcpp: "SetFormation", header: "StepBasic_ProductDefinition.hxx".}
proc formation*(this: StepBasicProductDefinition): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect, importcpp: "Formation",
    header: "StepBasic_ProductDefinition.hxx".}
proc setFrameOfReference*(this: var StepBasicProductDefinition; aFrameOfReference: Handle[
    StepBasicProductDefinitionContext]) {.importcpp: "SetFrameOfReference",
    header: "StepBasic_ProductDefinition.hxx".}
proc frameOfReference*(this: StepBasicProductDefinition): Handle[
    StepBasicProductDefinitionContext] {.noSideEffect,
                                        importcpp: "FrameOfReference", header: "StepBasic_ProductDefinition.hxx".}
type
  StepBasicProductDefinitionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinition::get_type_name(@)",
                            header: "StepBasic_ProductDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductDefinition::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinition.hxx".}
proc dynamicType*(this: StepBasicProductDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinition.hxx".}