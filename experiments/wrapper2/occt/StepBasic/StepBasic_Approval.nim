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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_ApprovalStatus"
discard "forward decl of TCollection_HAsciiString"
when defined(Status):
  discard
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_Approval"
type
  Handle_StepBasic_Approval* = handle[StepBasic_Approval]
  StepBasic_Approval* {.importcpp: "StepBasic_Approval",
                       header: "StepBasic_Approval.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## Approval


proc constructStepBasic_Approval*(): StepBasic_Approval {.constructor,
    importcpp: "StepBasic_Approval(@)", header: "StepBasic_Approval.hxx".}
proc Init*(this: var StepBasic_Approval; aStatus: handle[StepBasic_ApprovalStatus];
          aLevel: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Approval.hxx".}
proc SetStatus*(this: var StepBasic_Approval;
               aStatus: handle[StepBasic_ApprovalStatus]) {.
    importcpp: "SetStatus", header: "StepBasic_Approval.hxx".}
proc Status*(this: StepBasic_Approval): handle[StepBasic_ApprovalStatus] {.
    noSideEffect, importcpp: "Status", header: "StepBasic_Approval.hxx".}
proc SetLevel*(this: var StepBasic_Approval;
              aLevel: handle[TCollection_HAsciiString]) {.importcpp: "SetLevel",
    header: "StepBasic_Approval.hxx".}
proc Level*(this: StepBasic_Approval): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Level", header: "StepBasic_Approval.hxx".}
type
  StepBasic_Approvalbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Approval::get_type_name(@)",
                              header: "StepBasic_Approval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Approval::get_type_descriptor(@)",
    header: "StepBasic_Approval.hxx".}
proc DynamicType*(this: StepBasic_Approval): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Approval.hxx".}