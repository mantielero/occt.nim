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
  StepAP203_HArray1OfChangeRequestItem,
  ../StepBasic/StepBasic_ActionRequestAssignment

discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepAP203_ChangeRequest"
discard "forward decl of StepAP203_ChangeRequest"
type
  Handle_StepAP203_ChangeRequest* = handle[StepAP203_ChangeRequest]

## ! Representation of STEP entity ChangeRequest

type
  StepAP203_ChangeRequest* {.importcpp: "StepAP203_ChangeRequest",
                            header: "StepAP203_ChangeRequest.hxx", bycopy.} = object of StepBasic_ActionRequestAssignment ##
                                                                                                                   ## !
                                                                                                                   ## Empty
                                                                                                                   ## constructor


proc constructStepAP203_ChangeRequest*(): StepAP203_ChangeRequest {.constructor,
    importcpp: "StepAP203_ChangeRequest(@)", header: "StepAP203_ChangeRequest.hxx".}
proc Init*(this: var StepAP203_ChangeRequest;
    aActionRequestAssignment_AssignedActionRequest: handle[
    StepBasic_VersionedActionRequest];
          aItems: handle[StepAP203_HArray1OfChangeRequestItem]) {.
    importcpp: "Init", header: "StepAP203_ChangeRequest.hxx".}
proc Items*(this: StepAP203_ChangeRequest): handle[
    StepAP203_HArray1OfChangeRequestItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP203_ChangeRequest.hxx".}
proc SetItems*(this: var StepAP203_ChangeRequest;
              Items: handle[StepAP203_HArray1OfChangeRequestItem]) {.
    importcpp: "SetItems", header: "StepAP203_ChangeRequest.hxx".}
type
  StepAP203_ChangeRequestbase_type* = StepBasic_ActionRequestAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_ChangeRequest::get_type_name(@)",
                              header: "StepAP203_ChangeRequest.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_ChangeRequest::get_type_descriptor(@)",
    header: "StepAP203_ChangeRequest.hxx".}
proc DynamicType*(this: StepAP203_ChangeRequest): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepAP203_ChangeRequest.hxx".}