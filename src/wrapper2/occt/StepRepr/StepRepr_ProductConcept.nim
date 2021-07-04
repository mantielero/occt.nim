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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductConceptContext"
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepRepr_ProductConcept"
type
  Handle_StepRepr_ProductConcept* = handle[StepRepr_ProductConcept]

## ! Representation of STEP entity ProductConcept

type
  StepRepr_ProductConcept* {.importcpp: "StepRepr_ProductConcept",
                            header: "StepRepr_ProductConcept.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepRepr_ProductConcept*(): StepRepr_ProductConcept {.constructor,
    importcpp: "StepRepr_ProductConcept(@)", header: "StepRepr_ProductConcept.hxx".}
proc Init*(this: var StepRepr_ProductConcept; aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aMarketContext: handle[StepBasic_ProductConceptContext]) {.
    importcpp: "Init", header: "StepRepr_ProductConcept.hxx".}
proc Id*(this: StepRepr_ProductConcept): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepRepr_ProductConcept.hxx".}
proc SetId*(this: var StepRepr_ProductConcept; Id: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepRepr_ProductConcept.hxx".}
proc Name*(this: StepRepr_ProductConcept): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ProductConcept.hxx".}
proc SetName*(this: var StepRepr_ProductConcept;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ProductConcept.hxx".}
proc Description*(this: StepRepr_ProductConcept): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepRepr_ProductConcept.hxx".}
proc SetDescription*(this: var StepRepr_ProductConcept;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ProductConcept.hxx".}
proc HasDescription*(this: StepRepr_ProductConcept): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepRepr_ProductConcept.hxx".}
proc MarketContext*(this: StepRepr_ProductConcept): handle[
    StepBasic_ProductConceptContext] {.noSideEffect, importcpp: "MarketContext",
                                      header: "StepRepr_ProductConcept.hxx".}
proc SetMarketContext*(this: var StepRepr_ProductConcept;
                      MarketContext: handle[StepBasic_ProductConceptContext]) {.
    importcpp: "SetMarketContext", header: "StepRepr_ProductConcept.hxx".}
type
  StepRepr_ProductConceptbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ProductConcept::get_type_name(@)",
                              header: "StepRepr_ProductConcept.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ProductConcept::get_type_descriptor(@)",
    header: "StepRepr_ProductConcept.hxx".}
proc DynamicType*(this: StepRepr_ProductConcept): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_ProductConcept.hxx".}