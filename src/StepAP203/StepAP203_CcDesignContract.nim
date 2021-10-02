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

discard "forward decl of StepBasic_Contract"
discard "forward decl of StepAP203_CcDesignContract"
discard "forward decl of StepAP203_CcDesignContract"
type
  HandleC1C1* = Handle[StepAP203CcDesignContract]

## ! Representation of STEP entity CcDesignContract

type
  StepAP203CcDesignContract* {.importcpp: "StepAP203_CcDesignContract",
                              header: "StepAP203_CcDesignContract.hxx", bycopy.} = object of StepBasicContractAssignment ##
                                                                                                                  ## !
                                                                                                                  ## Empty
                                                                                                                  ## constructor


proc constructStepAP203CcDesignContract*(): StepAP203CcDesignContract {.
    constructor, importcpp: "StepAP203_CcDesignContract(@)",
    header: "StepAP203_CcDesignContract.hxx".}
proc init*(this: var StepAP203CcDesignContract;
          aContractAssignmentAssignedContract: Handle[StepBasicContract];
          aItems: Handle[StepAP203HArray1OfContractedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignContract.hxx".}
proc items*(this: StepAP203CcDesignContract): Handle[
    StepAP203HArray1OfContractedItem] {.noSideEffect, importcpp: "Items",
                                       header: "StepAP203_CcDesignContract.hxx".}
proc setItems*(this: var StepAP203CcDesignContract;
              items: Handle[StepAP203HArray1OfContractedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignContract.hxx".}
type
  StepAP203CcDesignContractbaseType* = StepBasicContractAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignContract::get_type_name(@)",
                            header: "StepAP203_CcDesignContract.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_CcDesignContract::get_type_descriptor(@)",
    header: "StepAP203_CcDesignContract.hxx".}
proc dynamicType*(this: StepAP203CcDesignContract): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignContract.hxx".}