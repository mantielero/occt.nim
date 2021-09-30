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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
type
  HandleC1C1* = Handle[StepAP214AppliedExternalIdentificationAssignment]

## ! Representation of STEP entity AppliedExternalIdentificationAssignment

type
  StepAP214AppliedExternalIdentificationAssignment* {.
      importcpp: "StepAP214_AppliedExternalIdentificationAssignment",
      header: "StepAP214_AppliedExternalIdentificationAssignment.hxx", bycopy.} = object of StepBasicExternalIdentificationAssignment ##
                                                                                                                               ## !
                                                                                                                               ## Empty
                                                                                                                               ## constructor


proc constructStepAP214AppliedExternalIdentificationAssignment*(): StepAP214AppliedExternalIdentificationAssignment {.
    constructor,
    importcpp: "StepAP214_AppliedExternalIdentificationAssignment(@)",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc init*(this: var StepAP214AppliedExternalIdentificationAssignment;
          aIdentificationAssignmentAssignedId: Handle[TCollectionHAsciiString];
          aIdentificationAssignmentRole: Handle[StepBasicIdentificationRole];
    aExternalIdentificationAssignmentSource: Handle[StepBasicExternalSource];
          aItems: Handle[StepAP214HArray1OfExternalIdentificationItem]) {.
    importcpp: "Init",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc items*(this: StepAP214AppliedExternalIdentificationAssignment): Handle[
    StepAP214HArray1OfExternalIdentificationItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedExternalIdentificationAssignment;
              items: Handle[StepAP214HArray1OfExternalIdentificationItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
type
  StepAP214AppliedExternalIdentificationAssignmentbaseType* = StepBasicExternalIdentificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedExternalIdentificationAssignment::get_type_name(@)", header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AppliedExternalIdentificationAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedExternalIdentificationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AppliedExternalIdentificationAssignment.hxx".}

























