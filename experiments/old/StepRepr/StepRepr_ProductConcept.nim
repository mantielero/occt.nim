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
discard "forward decl of StepBasic_ProductConceptContext"
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepRepr_ProductConcept"
type
  HandleC1C1* = Handle[StepReprProductConcept]

## ! Representation of STEP entity ProductConcept

type
  StepReprProductConcept* {.importcpp: "StepRepr_ProductConcept",
                           header: "StepRepr_ProductConcept.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepReprProductConcept*(): StepReprProductConcept {.constructor,
    importcpp: "StepRepr_ProductConcept(@)", header: "StepRepr_ProductConcept.hxx".}
proc init*(this: var StepReprProductConcept; aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString];
          aMarketContext: Handle[StepBasicProductConceptContext]) {.
    importcpp: "Init", header: "StepRepr_ProductConcept.hxx".}
proc id*(this: StepReprProductConcept): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepRepr_ProductConcept.hxx".}
proc setId*(this: var StepReprProductConcept; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepRepr_ProductConcept.hxx".}
proc name*(this: StepReprProductConcept): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ProductConcept.hxx".}
proc setName*(this: var StepReprProductConcept;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ProductConcept.hxx".}
proc description*(this: StepReprProductConcept): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_ProductConcept.hxx".}
proc setDescription*(this: var StepReprProductConcept;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ProductConcept.hxx".}
proc hasDescription*(this: StepReprProductConcept): StandardBoolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepRepr_ProductConcept.hxx".}
proc marketContext*(this: StepReprProductConcept): Handle[
    StepBasicProductConceptContext] {.noSideEffect, importcpp: "MarketContext",
                                     header: "StepRepr_ProductConcept.hxx".}
proc setMarketContext*(this: var StepReprProductConcept;
                      marketContext: Handle[StepBasicProductConceptContext]) {.
    importcpp: "SetMarketContext", header: "StepRepr_ProductConcept.hxx".}
type
  StepReprProductConceptbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ProductConcept::get_type_name(@)",
                            header: "StepRepr_ProductConcept.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ProductConcept::get_type_descriptor(@)",
    header: "StepRepr_ProductConcept.hxx".}
proc dynamicType*(this: StepReprProductConcept): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_ProductConcept.hxx".}