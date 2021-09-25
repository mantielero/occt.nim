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
discard "forward decl of StepBasic_ApplicationContext"
# when defined(Status):
#   discard
discard "forward decl of StepBasic_ApplicationProtocolDefinition"
discard "forward decl of StepBasic_ApplicationProtocolDefinition"
type
  HandleStepBasicApplicationProtocolDefinition* = Handle[
      StepBasicApplicationProtocolDefinition]
  StepBasicApplicationProtocolDefinition* {.
      importcpp: "StepBasic_ApplicationProtocolDefinition",
      header: "StepBasic_ApplicationProtocolDefinition.hxx", bycopy.} = object of StandardTransient ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## ApplicationProtocolDefinition


proc constructStepBasicApplicationProtocolDefinition*(): StepBasicApplicationProtocolDefinition {.
    constructor, importcpp: "StepBasic_ApplicationProtocolDefinition(@)",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc init*(this: var StepBasicApplicationProtocolDefinition;
          aStatus: Handle[TCollectionHAsciiString];
    aApplicationInterpretedModelSchemaName: Handle[TCollectionHAsciiString];
          aApplicationProtocolYear: int;
          aApplication: Handle[StepBasicApplicationContext]) {.importcpp: "Init",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc setStatus*(this: var StepBasicApplicationProtocolDefinition;
               aStatus: Handle[TCollectionHAsciiString]) {.importcpp: "SetStatus",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc status*(this: StepBasicApplicationProtocolDefinition): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Status", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc setApplicationInterpretedModelSchemaName*(
    this: var StepBasicApplicationProtocolDefinition;
    aApplicationInterpretedModelSchemaName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationInterpretedModelSchemaName",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc applicationInterpretedModelSchemaName*(
    this: StepBasicApplicationProtocolDefinition): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ApplicationInterpretedModelSchemaName",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc setApplicationProtocolYear*(this: var StepBasicApplicationProtocolDefinition;
                                aApplicationProtocolYear: int) {.
    importcpp: "SetApplicationProtocolYear",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc applicationProtocolYear*(this: StepBasicApplicationProtocolDefinition): int {.
    noSideEffect, importcpp: "ApplicationProtocolYear",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc setApplication*(this: var StepBasicApplicationProtocolDefinition;
                    aApplication: Handle[StepBasicApplicationContext]) {.
    importcpp: "SetApplication",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc application*(this: StepBasicApplicationProtocolDefinition): Handle[
    StepBasicApplicationContext] {.noSideEffect, importcpp: "Application", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
type
  StepBasicApplicationProtocolDefinitionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApplicationProtocolDefinition::get_type_name(@)", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ApplicationProtocolDefinition::get_type_descriptor(@)",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc dynamicType*(this: StepBasicApplicationProtocolDefinition): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ApplicationProtocolDefinition.hxx".}
