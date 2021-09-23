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
  StepAP203_HArray1OfApprovedItem, ../StepBasic/StepBasic_ApprovalAssignment

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP203_CcDesignApproval"
discard "forward decl of StepAP203_CcDesignApproval"
type
  Handle_StepAP203_CcDesignApproval* = handle[StepAP203_CcDesignApproval]

## ! Representation of STEP entity CcDesignApproval

type
  StepAP203_CcDesignApproval* {.importcpp: "StepAP203_CcDesignApproval",
                               header: "StepAP203_CcDesignApproval.hxx", bycopy.} = object of StepBasic_ApprovalAssignment ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructStepAP203_CcDesignApproval*(): StepAP203_CcDesignApproval {.
    constructor, importcpp: "StepAP203_CcDesignApproval(@)",
    header: "StepAP203_CcDesignApproval.hxx".}
proc Init*(this: var StepAP203_CcDesignApproval;
          aApprovalAssignment_AssignedApproval: handle[StepBasic_Approval];
          aItems: handle[StepAP203_HArray1OfApprovedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignApproval.hxx".}
proc Items*(this: StepAP203_CcDesignApproval): handle[
    StepAP203_HArray1OfApprovedItem] {.noSideEffect, importcpp: "Items",
                                      header: "StepAP203_CcDesignApproval.hxx".}
proc SetItems*(this: var StepAP203_CcDesignApproval;
              Items: handle[StepAP203_HArray1OfApprovedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignApproval.hxx".}
type
  StepAP203_CcDesignApprovalbase_type* = StepBasic_ApprovalAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignApproval::get_type_name(@)",
                              header: "StepAP203_CcDesignApproval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_CcDesignApproval::get_type_descriptor(@)",
    header: "StepAP203_CcDesignApproval.hxx".}
proc DynamicType*(this: StepAP203_CcDesignApproval): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignApproval.hxx".}