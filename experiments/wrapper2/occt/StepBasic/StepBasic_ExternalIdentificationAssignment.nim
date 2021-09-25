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

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_ExternalIdentificationAssignment"
discard "forward decl of StepBasic_ExternalIdentificationAssignment"
type
  HandleStepBasicExternalIdentificationAssignment* = Handle[
      StepBasicExternalIdentificationAssignment]

## ! Representation of STEP entity ExternalIdentificationAssignment

type
  StepBasicExternalIdentificationAssignment* {.
      importcpp: "StepBasic_ExternalIdentificationAssignment",
      header: "StepBasic_ExternalIdentificationAssignment.hxx", bycopy.} = object of StepBasicIdentificationAssignment ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor


proc constructStepBasicExternalIdentificationAssignment*(): StepBasicExternalIdentificationAssignment {.
    constructor, importcpp: "StepBasic_ExternalIdentificationAssignment(@)",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc init*(this: var StepBasicExternalIdentificationAssignment;
          aIdentificationAssignmentAssignedId: Handle[TCollectionHAsciiString];
          aIdentificationAssignmentRole: Handle[StepBasicIdentificationRole];
          aSource: Handle[StepBasicExternalSource]) {.importcpp: "Init",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc source*(this: StepBasicExternalIdentificationAssignment): Handle[
    StepBasicExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc setSource*(this: var StepBasicExternalIdentificationAssignment;
               source: Handle[StepBasicExternalSource]) {.importcpp: "SetSource",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
type
  StepBasicExternalIdentificationAssignmentbaseType* = StepBasicIdentificationAssignment

proc getTypeName*(): cstring {.importcpp: "StepBasic_ExternalIdentificationAssignment::get_type_name(@)", header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ExternalIdentificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc dynamicType*(this: StepBasicExternalIdentificationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ExternalIdentificationAssignment.hxx".}
