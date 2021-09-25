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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ProductConceptContext"
discard "forward decl of StepBasic_ProductConceptContext"
type
  HandleStepBasicProductConceptContext* = Handle[StepBasicProductConceptContext]

## ! Representation of STEP entity ProductConceptContext

type
  StepBasicProductConceptContext* {.importcpp: "StepBasic_ProductConceptContext", header: "StepBasic_ProductConceptContext.hxx",
                                   bycopy.} = object of StepBasicApplicationContextElement ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructStepBasicProductConceptContext*(): StepBasicProductConceptContext {.
    constructor, importcpp: "StepBasic_ProductConceptContext(@)",
    header: "StepBasic_ProductConceptContext.hxx".}
proc init*(this: var StepBasicProductConceptContext;
          aApplicationContextElementName: Handle[TCollectionHAsciiString];
    aApplicationContextElementFrameOfReference: Handle[
    StepBasicApplicationContext];
          aMarketSegmentType: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductConceptContext.hxx".}
proc marketSegmentType*(this: StepBasicProductConceptContext): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "MarketSegmentType",
                              header: "StepBasic_ProductConceptContext.hxx".}
proc setMarketSegmentType*(this: var StepBasicProductConceptContext;
                          marketSegmentType: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetMarketSegmentType",
    header: "StepBasic_ProductConceptContext.hxx".}
type
  StepBasicProductConceptContextbaseType* = StepBasicApplicationContextElement

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductConceptContext::get_type_name(@)",
                            header: "StepBasic_ProductConceptContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ProductConceptContext::get_type_descriptor(@)",
    header: "StepBasic_ProductConceptContext.hxx".}
proc dynamicType*(this: StepBasicProductConceptContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductConceptContext.hxx".}
