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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinition"
type
  Handle_StepBasic_ProductDefinition* = handle[StepBasic_ProductDefinition]
  StepBasic_ProductDefinition* {.importcpp: "StepBasic_ProductDefinition",
                                header: "StepBasic_ProductDefinition.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ProductDefinition


proc constructStepBasic_ProductDefinition*(): StepBasic_ProductDefinition {.
    constructor, importcpp: "StepBasic_ProductDefinition(@)",
    header: "StepBasic_ProductDefinition.hxx".}
proc Init*(this: var StepBasic_ProductDefinition;
          aId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aFormation: handle[StepBasic_ProductDefinitionFormation];
          aFrameOfReference: handle[StepBasic_ProductDefinitionContext]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinition.hxx".}
proc SetId*(this: var StepBasic_ProductDefinition;
           aId: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinition.hxx".}
proc Id*(this: StepBasic_ProductDefinition): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinition.hxx".}
proc SetDescription*(this: var StepBasic_ProductDefinition;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ProductDefinition.hxx".}
proc Description*(this: StepBasic_ProductDefinition): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_ProductDefinition.hxx".}
proc SetFormation*(this: var StepBasic_ProductDefinition;
                  aFormation: handle[StepBasic_ProductDefinitionFormation]) {.
    importcpp: "SetFormation", header: "StepBasic_ProductDefinition.hxx".}
proc Formation*(this: StepBasic_ProductDefinition): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect, importcpp: "Formation",
    header: "StepBasic_ProductDefinition.hxx".}
proc SetFrameOfReference*(this: var StepBasic_ProductDefinition; aFrameOfReference: handle[
    StepBasic_ProductDefinitionContext]) {.importcpp: "SetFrameOfReference",
    header: "StepBasic_ProductDefinition.hxx".}
proc FrameOfReference*(this: StepBasic_ProductDefinition): handle[
    StepBasic_ProductDefinitionContext] {.noSideEffect,
    importcpp: "FrameOfReference", header: "StepBasic_ProductDefinition.hxx".}
type
  StepBasic_ProductDefinitionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinition::get_type_name(@)",
                              header: "StepBasic_ProductDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductDefinition::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinition.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinition.hxx".}