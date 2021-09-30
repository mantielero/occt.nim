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

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP203_CcDesignPersonAndOrganizationAssignment"
discard "forward decl of StepAP203_CcDesignPersonAndOrganizationAssignment"
type
  HandleC1C1* = Handle[StepAP203CcDesignPersonAndOrganizationAssignment]

## ! Representation of STEP entity CcDesignPersonAndOrganizationAssignment

type
  StepAP203CcDesignPersonAndOrganizationAssignment* {.
      importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment",
      header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx", bycopy.} = object of StepBasicPersonAndOrganizationAssignment ##
                                                                                                                              ## !
                                                                                                                              ## Empty
                                                                                                                              ## constructor


proc constructStepAP203CcDesignPersonAndOrganizationAssignment*(): StepAP203CcDesignPersonAndOrganizationAssignment {.
    constructor,
    importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment(@)",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc init*(this: var StepAP203CcDesignPersonAndOrganizationAssignment;
    aPersonAndOrganizationAssignmentAssignedPersonAndOrganization: Handle[
    StepBasicPersonAndOrganization]; aPersonAndOrganizationAssignmentRole: Handle[
    StepBasicPersonAndOrganizationRole];
          aItems: Handle[StepAP203HArray1OfPersonOrganizationItem]) {.
    importcpp: "Init",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc items*(this: StepAP203CcDesignPersonAndOrganizationAssignment): Handle[
    StepAP203HArray1OfPersonOrganizationItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc setItems*(this: var StepAP203CcDesignPersonAndOrganizationAssignment;
              items: Handle[StepAP203HArray1OfPersonOrganizationItem]) {.
    importcpp: "SetItems",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
type
  StepAP203CcDesignPersonAndOrganizationAssignmentbaseType* = StepBasicPersonAndOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment::get_type_name(@)", header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP203_CcDesignPersonAndOrganizationAssignment::get_type_descriptor(@)",
    header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}
proc dynamicType*(this: StepAP203CcDesignPersonAndOrganizationAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP203_CcDesignPersonAndOrganizationAssignment.hxx".}

























