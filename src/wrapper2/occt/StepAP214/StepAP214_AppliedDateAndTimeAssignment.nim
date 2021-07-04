##  Created on: 1999-03-09
##  Created by: data exchange team
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
  StepAP214_HArray1OfDateAndTimeItem,
  ../StepBasic/StepBasic_DateAndTimeAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP214_DateAndTimeItem"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
type
  Handle_StepAP214_AppliedDateAndTimeAssignment* = handle[
      StepAP214_AppliedDateAndTimeAssignment]
  StepAP214_AppliedDateAndTimeAssignment* {.
      importcpp: "StepAP214_AppliedDateAndTimeAssignment",
      header: "StepAP214_AppliedDateAndTimeAssignment.hxx", bycopy.} = object of StepBasic_DateAndTimeAssignment ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## AppliedDateAndTimeAssignment


proc constructStepAP214_AppliedDateAndTimeAssignment*(): StepAP214_AppliedDateAndTimeAssignment {.
    constructor, importcpp: "StepAP214_AppliedDateAndTimeAssignment(@)",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedDateAndTimeAssignment;
          aAssignedDateAndTime: handle[StepBasic_DateAndTime];
          aRole: handle[StepBasic_DateTimeRole];
          aItems: handle[StepAP214_HArray1OfDateAndTimeItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedDateAndTimeAssignment;
              aItems: handle[StepAP214_HArray1OfDateAndTimeItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc Items*(this: StepAP214_AppliedDateAndTimeAssignment): handle[
    StepAP214_HArray1OfDateAndTimeItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedDateAndTimeAssignment;
                num: Standard_Integer): StepAP214_DateAndTimeItem {.noSideEffect,
    importcpp: "ItemsValue", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedDateAndTimeAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
type
  StepAP214_AppliedDateAndTimeAssignmentbase_type* = StepBasic_DateAndTimeAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedDateAndTimeAssignment::get_type_name(@)", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AppliedDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedDateAndTimeAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}