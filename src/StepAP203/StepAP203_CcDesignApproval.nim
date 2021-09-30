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

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepAP203_CcDesignApproval"
discard "forward decl of StepAP203_CcDesignApproval"
type
  HandleC1C1* = Handle[StepAP203CcDesignApproval]

## ! Representation of STEP entity CcDesignApproval

type
  StepAP203CcDesignApproval* {.importcpp: "StepAP203_CcDesignApproval",
                              header: "StepAP203_CcDesignApproval.hxx", bycopy.} = object of StepBasicApprovalAssignment ##
                                                                                                                  ## !
                                                                                                                  ## Empty
                                                                                                                  ## constructor


proc constructStepAP203CcDesignApproval*(): StepAP203CcDesignApproval {.
    constructor, importcpp: "StepAP203_CcDesignApproval(@)",
    header: "StepAP203_CcDesignApproval.hxx".}
proc init*(this: var StepAP203CcDesignApproval;
          aApprovalAssignmentAssignedApproval: Handle[StepBasicApproval];
          aItems: Handle[StepAP203HArray1OfApprovedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignApproval.hxx".}
proc items*(this: StepAP203CcDesignApproval): Handle[StepAP203HArray1OfApprovedItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignApproval.hxx".}
proc setItems*(this: var StepAP203CcDesignApproval;
              items: Handle[StepAP203HArray1OfApprovedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignApproval.hxx".}
type
  StepAP203CcDesignApprovalbaseType* = StepBasicApprovalAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignApproval::get_type_name(@)",
                            header: "StepAP203_CcDesignApproval.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_CcDesignApproval::get_type_descriptor(@)",
    header: "StepAP203_CcDesignApproval.hxx".}
proc dynamicType*(this: StepAP203CcDesignApproval): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_CcDesignApproval.hxx".}

























