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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepBasic_ApplicationContextElement

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_ProductDefinitionContext"
type
  Handle_StepBasic_ProductDefinitionContext* = handle[
      StepBasic_ProductDefinitionContext]
  StepBasic_ProductDefinitionContext* {.importcpp: "StepBasic_ProductDefinitionContext", header: "StepBasic_ProductDefinitionContext.hxx",
                                       bycopy.} = object of StepBasic_ApplicationContextElement ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## ProductDefinitionContext


proc constructStepBasic_ProductDefinitionContext*(): StepBasic_ProductDefinitionContext {.
    constructor, importcpp: "StepBasic_ProductDefinitionContext(@)",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionContext;
          aName: handle[TCollection_HAsciiString];
          aFrameOfReference: handle[StepBasic_ApplicationContext];
          aLifeCycleStage: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc SetLifeCycleStage*(this: var StepBasic_ProductDefinitionContext;
                       aLifeCycleStage: handle[TCollection_HAsciiString]) {.
    importcpp: "SetLifeCycleStage",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc LifeCycleStage*(this: StepBasic_ProductDefinitionContext): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "LifeCycleStage",
                               header: "StepBasic_ProductDefinitionContext.hxx".}
type
  StepBasic_ProductDefinitionContextbase_type* = StepBasic_ApplicationContextElement

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionContext::get_type_name(@)",
                              header: "StepBasic_ProductDefinitionContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductDefinitionContext::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionContext.hxx".}