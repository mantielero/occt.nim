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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApprovalStatus"
discard "forward decl of StepBasic_ApprovalStatus"
type
  Handle_StepBasic_ApprovalStatus* = handle[StepBasic_ApprovalStatus]
  StepBasic_ApprovalStatus* {.importcpp: "StepBasic_ApprovalStatus",
                             header: "StepBasic_ApprovalStatus.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## ApprovalStatus


proc constructStepBasic_ApprovalStatus*(): StepBasic_ApprovalStatus {.constructor,
    importcpp: "StepBasic_ApprovalStatus(@)",
    header: "StepBasic_ApprovalStatus.hxx".}
proc Init*(this: var StepBasic_ApprovalStatus;
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ApprovalStatus.hxx".}
proc SetName*(this: var StepBasic_ApprovalStatus;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ApprovalStatus.hxx".}
proc Name*(this: StepBasic_ApprovalStatus): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ApprovalStatus.hxx".}
type
  StepBasic_ApprovalStatusbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalStatus::get_type_name(@)",
                              header: "StepBasic_ApprovalStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalStatus::get_type_descriptor(@)",
    header: "StepBasic_ApprovalStatus.hxx".}
proc DynamicType*(this: StepBasic_ApprovalStatus): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ApprovalStatus.hxx".}