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

discard "forward decl of StepBasic_ApprovalStatus"
discard "forward decl of TCollection_HAsciiString"
# when defined(Status):
#   discard
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_Approval"
type
  HandleStepBasicApproval* = Handle[StepBasicApproval]
  StepBasicApproval* {.importcpp: "StepBasic_Approval",
                      header: "StepBasic_Approval.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## Approval


proc constructStepBasicApproval*(): StepBasicApproval {.constructor,
    importcpp: "StepBasic_Approval(@)", header: "StepBasic_Approval.hxx".}
proc init*(this: var StepBasicApproval; aStatus: Handle[StepBasicApprovalStatus];
          aLevel: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Approval.hxx".}
proc setStatus*(this: var StepBasicApproval;
               aStatus: Handle[StepBasicApprovalStatus]) {.importcpp: "SetStatus",
    header: "StepBasic_Approval.hxx".}
proc status*(this: StepBasicApproval): Handle[StepBasicApprovalStatus] {.
    noSideEffect, importcpp: "Status", header: "StepBasic_Approval.hxx".}
proc setLevel*(this: var StepBasicApproval; aLevel: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetLevel", header: "StepBasic_Approval.hxx".}
proc level*(this: StepBasicApproval): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Level", header: "StepBasic_Approval.hxx".}
type
  StepBasicApprovalbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Approval::get_type_name(@)",
                            header: "StepBasic_Approval.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Approval::get_type_descriptor(@)",
    header: "StepBasic_Approval.hxx".}
proc dynamicType*(this: StepBasicApproval): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Approval.hxx".}
