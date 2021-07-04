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
  StepAP203_HArray1OfPersonOrganizationItem,
  ../StepBasic/StepBasic_PersonAndOrganizationAssignment

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP203_CcDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP203_CcDesignPersonAndOrganizationAssignment"
type
  Handle_StepAP203_CcDesignPersonAndOrganizationAssignment* = handle[
      StepAP203_CcDesignPersonAndOrganizationAssignment]

## ! Representation of STEP entity CcDesignPersonAndOrganizationAssignment

type
  StepAP203_CcDesignPersonAndOrganizationAssignment* {.
      importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment",
      header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasic_PersonAndOrganizationAssignment ##
                                                                                                                               ## !
                                                                                                                               ## Empty
                                                                                                                               ## constructor


proc constructStepAP203_CcDesignPersonAndOrganizationAssignment*(): StepAP203_CcDesignPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment(@)",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc Init*(this: var StepAP203_CcDesignPersonAndOrganizationAssignment;
    aPersonAndOrganizationAssignment_AssignedPersonAndOrganization: handle[
    StepBasic_PersonAndOrganization]; aPersonAndOrganizationAssignment_Role: handle[
    StepBasic_PersonAndOrganizationRole];
          aItems: handle[StepAP203_HArray1OfPersonOrganizationItem]) {.
    importcpp: "Init",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc Items*(this: StepAP203_CcDesignPersonAndOrganizationAssignment): handle[
    StepAP203_HArray1OfPersonOrganizationItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc SetItems*(this: var StepAP203_CcDesignPersonAndOrganizationAssignment;
              Items: handle[StepAP203_HArray1OfPersonOrganizationItem]) {.
    importcpp: "SetItems",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
type
  StepAP203_CcDesignPersonAndOrganizationAssignmentbase_type* = StepBasic_PersonAndOrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc DynamicType*(this: StepAP203_CcDesignPersonAndOrganizationAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}