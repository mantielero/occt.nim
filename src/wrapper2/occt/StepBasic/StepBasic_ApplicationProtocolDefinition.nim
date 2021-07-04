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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
when defined(Status):
  discard
discard "forward decl of StepBasic_ApplicationProtocolDefinition"
discard "forward decl of StepBasic_ApplicationProtocolDefinition"
type
  Handle_StepBasic_ApplicationProtocolDefinition* = handle[
      StepBasic_ApplicationProtocolDefinition]
  StepBasic_ApplicationProtocolDefinition* {.
      importcpp: "StepBasic_ApplicationProtocolDefinition",
      header: "StepBasic_ApplicationProtocolDefinition.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## ApplicationProtocolDefinition


proc constructStepBasic_ApplicationProtocolDefinition*(): StepBasic_ApplicationProtocolDefinition {.
    constructor, importcpp: "StepBasic_ApplicationProtocolDefinition(@)",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc Init*(this: var StepBasic_ApplicationProtocolDefinition;
          aStatus: handle[TCollection_HAsciiString];
    aApplicationInterpretedModelSchemaName: handle[TCollection_HAsciiString];
          aApplicationProtocolYear: Standard_Integer;
          aApplication: handle[StepBasic_ApplicationContext]) {.importcpp: "Init",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc SetStatus*(this: var StepBasic_ApplicationProtocolDefinition;
               aStatus: handle[TCollection_HAsciiString]) {.
    importcpp: "SetStatus", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc Status*(this: StepBasic_ApplicationProtocolDefinition): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Status", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc SetApplicationInterpretedModelSchemaName*(
    this: var StepBasic_ApplicationProtocolDefinition;
    aApplicationInterpretedModelSchemaName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationInterpretedModelSchemaName",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc ApplicationInterpretedModelSchemaName*(
    this: StepBasic_ApplicationProtocolDefinition): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ApplicationInterpretedModelSchemaName", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc SetApplicationProtocolYear*(this: var StepBasic_ApplicationProtocolDefinition;
                                aApplicationProtocolYear: Standard_Integer) {.
    importcpp: "SetApplicationProtocolYear",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc ApplicationProtocolYear*(this: StepBasic_ApplicationProtocolDefinition): Standard_Integer {.
    noSideEffect, importcpp: "ApplicationProtocolYear",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc SetApplication*(this: var StepBasic_ApplicationProtocolDefinition;
                    aApplication: handle[StepBasic_ApplicationContext]) {.
    importcpp: "SetApplication",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc Application*(this: StepBasic_ApplicationProtocolDefinition): handle[
    StepBasic_ApplicationContext] {.noSideEffect, importcpp: "Application", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
type
  StepBasic_ApplicationProtocolDefinitionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApplicationProtocolDefinition::get_type_name(@)", header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ApplicationProtocolDefinition::get_type_descriptor(@)",
    header: "StepBasic_ApplicationProtocolDefinition.hxx".}
proc DynamicType*(this: StepBasic_ApplicationProtocolDefinition): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ApplicationProtocolDefinition.hxx".}