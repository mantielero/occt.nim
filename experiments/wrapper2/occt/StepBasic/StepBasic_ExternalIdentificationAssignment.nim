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
  StepBasic_IdentificationAssignment

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_ExternalIdentificationAssignment"
discard "forward decl of StepBasic_ExternalIdentificationAssignment"
type
  Handle_StepBasic_ExternalIdentificationAssignment* = handle[
      StepBasic_ExternalIdentificationAssignment]

## ! Representation of STEP entity ExternalIdentificationAssignment

type
  StepBasic_ExternalIdentificationAssignment* {.
      importcpp: "StepBasic_ExternalIdentificationAssignment",
      header: "StepBasic_ExternalIdentificationAssignment.hxx", bycopy.} = object of StepBasic_IdentificationAssignment ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepBasic_ExternalIdentificationAssignment*(): StepBasic_ExternalIdentificationAssignment {.
    constructor, importcpp: "StepBasic_ExternalIdentificationAssignment(@)",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc Init*(this: var StepBasic_ExternalIdentificationAssignment;
    aIdentificationAssignment_AssignedId: handle[TCollection_HAsciiString];
          aIdentificationAssignment_Role: handle[StepBasic_IdentificationRole];
          aSource: handle[StepBasic_ExternalSource]) {.importcpp: "Init",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc Source*(this: StepBasic_ExternalIdentificationAssignment): handle[
    StepBasic_ExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc SetSource*(this: var StepBasic_ExternalIdentificationAssignment;
               Source: handle[StepBasic_ExternalSource]) {.importcpp: "SetSource",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
type
  StepBasic_ExternalIdentificationAssignmentbase_type* = StepBasic_IdentificationAssignment

proc get_type_name*(): cstring {.importcpp: "StepBasic_ExternalIdentificationAssignment::get_type_name(@)", header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ExternalIdentificationAssignment::get_type_descriptor(@)",
    header: "StepBasic_ExternalIdentificationAssignment.hxx".}
proc DynamicType*(this: StepBasic_ExternalIdentificationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ExternalIdentificationAssignment.hxx".}