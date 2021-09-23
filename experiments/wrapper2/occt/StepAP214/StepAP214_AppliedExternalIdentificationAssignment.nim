##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  StepAP214_HArray1OfExternalIdentificationItem,
  ../StepBasic/StepBasic_ExternalIdentificationAssignment

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
type
  Handle_StepAP214_AppliedExternalIdentificationAssignment* = handle[
      StepAP214_AppliedExternalIdentificationAssignment]

## ! Representation of STEP entity AppliedExternalIdentificationAssignment

type
  StepAP214_AppliedExternalIdentificationAssignment* {.
      importcpp: "StepAP214_AppliedExternalIdentificationAssignment",
      header: "StepAP214_AppliedExternalIdentificationAssignment.hxx", bycopy.} = object of StepBasic_ExternalIdentificationAssignment ##
                                                                                                                                ## !
                                                                                                                                ## Empty
                                                                                                                                ## constructor


proc constructStepAP214_AppliedExternalIdentificationAssignment*(): StepAP214_AppliedExternalIdentificationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedExternalIdentificationAssignment(@)",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedExternalIdentificationAssignment;
    aIdentificationAssignment_AssignedId: handle[TCollection_HAsciiString];
          aIdentificationAssignment_Role: handle[StepBasic_IdentificationRole];
    aExternalIdentificationAssignment_Source: handle[StepBasic_ExternalSource];
          aItems: handle[StepAP214_HArray1OfExternalIdentificationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc Items*(this: StepAP214_AppliedExternalIdentificationAssignment): handle[
    StepAP214_HArray1OfExternalIdentificationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedExternalIdentificationAssignment;
              Items: handle[StepAP214_HArray1OfExternalIdentificationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
type
  StepAP214_AppliedExternalIdentificationAssignmentbase_type* = StepBasic_ExternalIdentificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedExternalIdentificationAssignment::get_type_name(@)", header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AppliedExternalIdentificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedExternalIdentificationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}