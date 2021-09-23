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
  StepAP203_HArray1OfDateTimeItem, ../StepBasic/StepBasic_DateAndTimeAssignment

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP203_CcDesignDateAndTimeAssignment"
discard "forward decl of StepAP203_CcDesignDateAndTimeAssignment"
type
  Handle_StepAP203_CcDesignDateAndTimeAssignment* = handle[
      StepAP203_CcDesignDateAndTimeAssignment]

## ! Representation of STEP entity CcDesignDateAndTimeAssignment

type
  StepAP203_CcDesignDateAndTimeAssignment* {.
      importcpp: "StepAP203_CcDesignDateAndTimeAssignment",
      header: "StepAP203_CcDesignDateAndTimeAssignment.hxx", bycopy.} = object of StepBasic_DateAndTimeAssignment ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepAP203_CcDesignDateAndTimeAssignment*(): StepAP203_CcDesignDateAndTimeAssignment {.
    constructor, importcpp: "StepAP203_CcDesignDateAndTimeAssignment(@)",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc Init*(this: var StepAP203_CcDesignDateAndTimeAssignment;
    aDateAndTimeAssignment_AssignedDateAndTime: handle[StepBasic_DateAndTime];
          aDateAndTimeAssignment_Role: handle[StepBasic_DateTimeRole];
          aItems: handle[StepAP203_HArray1OfDateTimeItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc Items*(this: StepAP203_CcDesignDateAndTimeAssignment): handle[
    StepAP203_HArray1OfDateTimeItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc SetItems*(this: var StepAP203_CcDesignDateAndTimeAssignment;
              Items: handle[StepAP203_HArray1OfDateTimeItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
type
  StepAP203_CcDesignDateAndTimeAssignmentbase_type* = StepBasic_DateAndTimeAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignDateAndTimeAssignment::get_type_name(@)", header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP203_CcDesignDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}
proc DynamicType*(this: StepAP203_CcDesignDateAndTimeAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP203_CcDesignDateAndTimeAssignment.hxx".}