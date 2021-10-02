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

discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_DateTimeSelect"
discard "forward decl of StepBasic_ApprovalDateTime"
discard "forward decl of StepBasic_ApprovalDateTime"
type
  HandleC1C1* = Handle[StepBasicApprovalDateTime]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasicApprovalDateTime* {.importcpp: "StepBasic_ApprovalDateTime",
                              header: "StepBasic_ApprovalDateTime.hxx", bycopy.} = object of StandardTransient


proc constructStepBasicApprovalDateTime*(): StepBasicApprovalDateTime {.
    constructor, importcpp: "StepBasic_ApprovalDateTime(@)",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc init*(this: var StepBasicApprovalDateTime; aDateTime: StepBasicDateTimeSelect;
          aDatedApproval: Handle[StepBasicApproval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc setDateTime*(this: var StepBasicApprovalDateTime;
                 aDateTime: StepBasicDateTimeSelect) {.importcpp: "SetDateTime",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc dateTime*(this: StepBasicApprovalDateTime): StepBasicDateTimeSelect {.
    noSideEffect, importcpp: "DateTime", header: "StepBasic_ApprovalDateTime.hxx".}
proc setDatedApproval*(this: var StepBasicApprovalDateTime;
                      aDatedApproval: Handle[StepBasicApproval]) {.
    importcpp: "SetDatedApproval", header: "StepBasic_ApprovalDateTime.hxx".}
proc datedApproval*(this: StepBasicApprovalDateTime): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "DatedApproval",
    header: "StepBasic_ApprovalDateTime.hxx".}
type
  StepBasicApprovalDateTimebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApprovalDateTime::get_type_name(@)",
                            header: "StepBasic_ApprovalDateTime.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApprovalDateTime::get_type_descriptor(@)",
    header: "StepBasic_ApprovalDateTime.hxx".}
proc dynamicType*(this: StepBasicApprovalDateTime): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalDateTime.hxx".}