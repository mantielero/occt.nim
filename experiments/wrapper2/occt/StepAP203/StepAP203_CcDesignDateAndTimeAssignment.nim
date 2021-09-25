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

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP203_CcDesignDateAndTimeAssignment"
discard "forward decl of StepAP203_CcDesignDateAndTimeAssignment"
type
  HandleStepAP203CcDesignDateAndTimeAssignment* = Handle[
      StepAP203CcDesignDateAndTimeAssignment]

## ! Representation of STEP entity CcDesignDateAndTimeAssignment

type
  StepAP203CcDesignDateAndTimeAssignment* {.
      importcpp: "StepAP203_CcDesignDateAndTimeAssignment",
      header: "StepAP203_CcDesignDateAndTimeAssignment.hxx", bycopy.} = object of StepBasicDateAndTimeAssignment ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepAP203CcDesignDateAndTimeAssignment*(): StepAP203CcDesignDateAndTimeAssignment {.
    constructor, importcpp: "StepAP203_CcDesignDateAndTimeAssignment(@)",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc init*(this: var StepAP203CcDesignDateAndTimeAssignment;
    aDateAndTimeAssignmentAssignedDateAndTime: Handle[StepBasicDateAndTime];
          aDateAndTimeAssignmentRole: Handle[StepBasicDateTimeRole];
          aItems: Handle[StepAP203HArray1OfDateTimeItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc items*(this: StepAP203CcDesignDateAndTimeAssignment): Handle[
    StepAP203HArray1OfDateTimeItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc setItems*(this: var StepAP203CcDesignDateAndTimeAssignment;
              items: Handle[StepAP203HArray1OfDateTimeItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
type
  StepAP203CcDesignDateAndTimeAssignmentbaseType* = StepBasicDateAndTimeAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignDateAndTimeAssignment::get_type_name(@)", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP203_CcDesignDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc dynamicType*(this: StepAP203CcDesignDateAndTimeAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
