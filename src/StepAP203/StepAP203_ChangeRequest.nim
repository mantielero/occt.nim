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
discard "forward decl of StepAP203_ChangeRequest"
discard "forward decl of StepAP203_ChangeRequest"
type
  HandleC1C1* = Handle[StepAP203ChangeRequest]

## ! Representation of STEP entity ChangeRequest

type
  StepAP203ChangeRequest* {.importcpp: "StepAP203_ChangeRequest",
                           header: "StepAP203_ChangeRequest.hxx", bycopy.} = object of StepBasicActionRequestAssignment ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepAP203ChangeRequest*(): StepAP203ChangeRequest {.constructor,
    importcpp: "StepAP203_ChangeRequest(@)", header: "StepAP203_ChangeRequest.hxx".}
proc init*(this: var StepAP203ChangeRequest;
    aActionRequestAssignmentAssignedActionRequest: Handle[
    StepBasicVersionedActionRequest];
          aItems: Handle[StepAP203HArray1OfChangeRequestItem]) {.
    importcpp: "Init", header: "StepAP203_ChangeRequest.hxx".}
proc items*(this: StepAP203ChangeRequest): Handle[
    StepAP203HArray1OfChangeRequestItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP203_ChangeRequest.hxx".}
proc setItems*(this: var StepAP203ChangeRequest;
              items: Handle[StepAP203HArray1OfChangeRequestItem]) {.
    importcpp: "SetItems", header: "StepAP203_ChangeRequest.hxx".}
type
  StepAP203ChangeRequestbaseType* = StepBasicActionRequestAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_ChangeRequest::get_type_name(@)",
                            header: "StepAP203_ChangeRequest.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_ChangeRequest::get_type_descriptor(@)",
    header: "StepAP203_ChangeRequest.hxx".}
proc dynamicType*(this: StepAP203ChangeRequest): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepAP203_ChangeRequest.hxx".}

























