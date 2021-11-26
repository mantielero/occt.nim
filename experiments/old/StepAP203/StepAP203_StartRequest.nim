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

discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepAP203_StartRequest"
discard "forward decl of StepAP203_StartRequest"
type
  HandleC1C1* = Handle[StepAP203StartRequest]

## ! Representation of STEP entity StartRequest

type
  StepAP203StartRequest* {.importcpp: "StepAP203_StartRequest",
                          header: "StepAP203_StartRequest.hxx", bycopy.} = object of StepBasicActionRequestAssignment ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepAP203StartRequest*(): StepAP203StartRequest {.constructor,
    importcpp: "StepAP203_StartRequest(@)", header: "StepAP203_StartRequest.hxx".}
proc init*(this: var StepAP203StartRequest; aActionRequestAssignmentAssignedActionRequest: Handle[
    StepBasicVersionedActionRequest];
          aItems: Handle[StepAP203HArray1OfStartRequestItem]) {.importcpp: "Init",
    header: "StepAP203_StartRequest.hxx".}
proc items*(this: StepAP203StartRequest): Handle[StepAP203HArray1OfStartRequestItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_StartRequest.hxx".}
proc setItems*(this: var StepAP203StartRequest;
              items: Handle[StepAP203HArray1OfStartRequestItem]) {.
    importcpp: "SetItems", header: "StepAP203_StartRequest.hxx".}
type
  StepAP203StartRequestbaseType* = StepBasicActionRequestAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_StartRequest::get_type_name(@)",
                            header: "StepAP203_StartRequest.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_StartRequest::get_type_descriptor(@)",
    header: "StepAP203_StartRequest.hxx".}
proc dynamicType*(this: StepAP203StartRequest): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP203_StartRequest.hxx".}