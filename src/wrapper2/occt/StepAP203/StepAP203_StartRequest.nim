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
  StepAP203_HArray1OfStartRequestItem,
  ../StepBasic/StepBasic_ActionRequestAssignment

discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepAP203_StartRequest"
discard "forward decl of StepAP203_StartRequest"
type
  Handle_StepAP203_StartRequest* = handle[StepAP203_StartRequest]

## ! Representation of STEP entity StartRequest

type
  StepAP203_StartRequest* {.importcpp: "StepAP203_StartRequest",
                           header: "StepAP203_StartRequest.hxx", bycopy.} = object of StepBasic_ActionRequestAssignment ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepAP203_StartRequest*(): StepAP203_StartRequest {.constructor,
    importcpp: "StepAP203_StartRequest(@)", header: "StepAP203_StartRequest.hxx".}
proc Init*(this: var StepAP203_StartRequest;
    aActionRequestAssignment_AssignedActionRequest: handle[
    StepBasic_VersionedActionRequest];
          aItems: handle[StepAP203_HArray1OfStartRequestItem]) {.
    importcpp: "Init", header: "StepAP203_StartRequest.hxx".}
proc Items*(this: StepAP203_StartRequest): handle[
    StepAP203_HArray1OfStartRequestItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP203_StartRequest.hxx".}
proc SetItems*(this: var StepAP203_StartRequest;
              Items: handle[StepAP203_HArray1OfStartRequestItem]) {.
    importcpp: "SetItems", header: "StepAP203_StartRequest.hxx".}
type
  StepAP203_StartRequestbase_type* = StepBasic_ActionRequestAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_StartRequest::get_type_name(@)",
                              header: "StepAP203_StartRequest.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_StartRequest::get_type_descriptor(@)",
    header: "StepAP203_StartRequest.hxx".}
proc DynamicType*(this: StepAP203_StartRequest): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepAP203_StartRequest.hxx".}