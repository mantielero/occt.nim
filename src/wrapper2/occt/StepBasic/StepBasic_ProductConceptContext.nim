##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_ProductConceptContext"
discard "forward decl of StepBasic_ProductConceptContext"
type
  Handle_StepBasic_ProductConceptContext* = handle[StepBasic_ProductConceptContext]

## ! Representation of STEP entity ProductConceptContext

type
  StepBasic_ProductConceptContext* {.importcpp: "StepBasic_ProductConceptContext", header: "StepBasic_ProductConceptContext.hxx",
                                    bycopy.} = object of StepBasic_ApplicationContextElement ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepBasic_ProductConceptContext*(): StepBasic_ProductConceptContext {.
    constructor, importcpp: "StepBasic_ProductConceptContext(@)",
    header: "StepBasic_ProductConceptContext.hxx".}
proc Init*(this: var StepBasic_ProductConceptContext;
          aApplicationContextElement_Name: handle[TCollection_HAsciiString];
    aApplicationContextElement_FrameOfReference: handle[
    StepBasic_ApplicationContext];
          aMarketSegmentType: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductConceptContext.hxx".}
proc MarketSegmentType*(this: StepBasic_ProductConceptContext): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "MarketSegmentType",
                               header: "StepBasic_ProductConceptContext.hxx".}
proc SetMarketSegmentType*(this: var StepBasic_ProductConceptContext;
                          MarketSegmentType: handle[TCollection_HAsciiString]) {.
    importcpp: "SetMarketSegmentType",
    header: "StepBasic_ProductConceptContext.hxx".}
type
  StepBasic_ProductConceptContextbase_type* = StepBasic_ApplicationContextElement

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductConceptContext::get_type_name(@)",
                              header: "StepBasic_ProductConceptContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductConceptContext::get_type_descriptor(@)",
    header: "StepBasic_ProductConceptContext.hxx".}
proc DynamicType*(this: StepBasic_ProductConceptContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductConceptContext.hxx".}