##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_DateTimeSelect,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_DateTimeSelect"
discard "forward decl of StepBasic_ApprovalDateTime"
discard "forward decl of StepBasic_ApprovalDateTime"
type
  Handle_StepBasic_ApprovalDateTime* = handle[StepBasic_ApprovalDateTime]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasic_ApprovalDateTime* {.importcpp: "StepBasic_ApprovalDateTime",
                               header: "StepBasic_ApprovalDateTime.hxx", bycopy.} = object of Standard_Transient


proc constructStepBasic_ApprovalDateTime*(): StepBasic_ApprovalDateTime {.
    constructor, importcpp: "StepBasic_ApprovalDateTime(@)",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc Init*(this: var StepBasic_ApprovalDateTime;
          aDateTime: StepBasic_DateTimeSelect;
          aDatedApproval: handle[StepBasic_Approval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc SetDateTime*(this: var StepBasic_ApprovalDateTime;
                 aDateTime: StepBasic_DateTimeSelect) {.importcpp: "SetDateTime",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc DateTime*(this: StepBasic_ApprovalDateTime): StepBasic_DateTimeSelect {.
    noSideEffect, importcpp: "DateTime", header: "StepBasic_ApprovalDateTime.hxx".}
proc SetDatedApproval*(this: var StepBasic_ApprovalDateTime;
                      aDatedApproval: handle[StepBasic_Approval]) {.
    importcpp: "SetDatedApproval", header: "StepBasic_ApprovalDateTime.hxx".}
proc DatedApproval*(this: StepBasic_ApprovalDateTime): handle[StepBasic_Approval] {.
    noSideEffect, importcpp: "DatedApproval",
    header: "StepBasic_ApprovalDateTime.hxx".}
type
  StepBasic_ApprovalDateTimebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalDateTime::get_type_name(@)",
                              header: "StepBasic_ApprovalDateTime.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalDateTime::get_type_descriptor(@)",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc DynamicType*(this: StepBasic_ApprovalDateTime): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalDateTime.hxx".}