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
  StepAP203_HArray1OfContractedItem, ../StepBasic/StepBasic_ContractAssignment

discard "forward decl of StepBasic_Contract"
discard "forward decl of StepAP203_CcDesignContract"
discard "forward decl of StepAP203_CcDesignContract"
type
  Handle_StepAP203_CcDesignContract* = handle[StepAP203_CcDesignContract]

## ! Representation of STEP entity CcDesignContract

type
  StepAP203_CcDesignContract* {.importcpp: "StepAP203_CcDesignContract",
                               header: "StepAP203_CcDesignContract.hxx", bycopy.} = object of StepBasic_ContractAssignment ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructStepAP203_CcDesignContract*(): StepAP203_CcDesignContract {.
    constructor, importcpp: "StepAP203_CcDesignContract(@)",
    header: "StepAP203_CcDesignContract.hxx".}
proc Init*(this: var StepAP203_CcDesignContract;
          aContractAssignment_AssignedContract: handle[StepBasic_Contract];
          aItems: handle[StepAP203_HArray1OfContractedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignContract.hxx".}
proc Items*(this: StepAP203_CcDesignContract): handle[
    StepAP203_HArray1OfContractedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignContract.hxx".}
proc SetItems*(this: var StepAP203_CcDesignContract;
              Items: handle[StepAP203_HArray1OfContractedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignContract.hxx".}
type
  StepAP203_CcDesignContractbase_type* = StepBasic_ContractAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignContract::get_type_name(@)",
                              header: "StepAP203_CcDesignContract.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_CcDesignContract::get_type_descriptor(@)",
    header: "StepAP203_CcDesignContract.hxx".}
proc DynamicType*(this: StepAP203_CcDesignContract): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignContract.hxx".}