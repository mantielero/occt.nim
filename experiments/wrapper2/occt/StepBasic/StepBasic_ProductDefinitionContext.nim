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
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_ProductDefinitionContext"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionContext]
  StepBasicProductDefinitionContext* {.importcpp: "StepBasic_ProductDefinitionContext", header: "StepBasic_ProductDefinitionContext.hxx",
                                      bycopy.} = object of StepBasicApplicationContextElement ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ProductDefinitionContext


proc constructStepBasicProductDefinitionContext*(): StepBasicProductDefinitionContext {.
    constructor, importcpp: "StepBasic_ProductDefinitionContext(@)",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc init*(this: var StepBasicProductDefinitionContext;
          aName: Handle[TCollectionHAsciiString];
          aFrameOfReference: Handle[StepBasicApplicationContext];
          aLifeCycleStage: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc setLifeCycleStage*(this: var StepBasicProductDefinitionContext;
                       aLifeCycleStage: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetLifeCycleStage",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc lifeCycleStage*(this: StepBasicProductDefinitionContext): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "LifeCycleStage",
                              header: "StepBasic_ProductDefinitionContext.hxx".}
type
  StepBasicProductDefinitionContextbaseType* = StepBasicApplicationContextElement

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionContext::get_type_name(@)",
                            header: "StepBasic_ProductDefinitionContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductDefinitionContext::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionContext.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionContext.hxx".}

























