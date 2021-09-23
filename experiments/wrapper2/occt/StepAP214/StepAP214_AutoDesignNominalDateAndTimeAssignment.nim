##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  StepAP214_HArray1OfAutoDesignDateAndTimeItem,
  ../StepBasic/StepBasic_DateAndTimeAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP214_AutoDesignDateAndTimeItem"
discard "forward decl of StepAP214_AutoDesignNominalDateAndTimeAssignment"
discard "forward decl of StepAP214_AutoDesignNominalDateAndTimeAssignment"
type
  Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment* = handle[
      StepAP214_AutoDesignNominalDateAndTimeAssignment]
  StepAP214_AutoDesignNominalDateAndTimeAssignment* {.
      importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment",
      header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx", bycopy.} = object of StepBasic_DateAndTimeAssignment ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## AutoDesignNominalDateAndTimeAssignment


proc constructStepAP214_AutoDesignNominalDateAndTimeAssignment*(): StepAP214_AutoDesignNominalDateAndTimeAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment(@)",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignNominalDateAndTimeAssignment;
          aAssignedDateAndTime: handle[StepBasic_DateAndTime];
          aRole: handle[StepBasic_DateTimeRole];
          aItems: handle[StepAP214_HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "Init",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignNominalDateAndTimeAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignNominalDateAndTimeAssignment): handle[
    StepAP214_HArray1OfAutoDesignDateAndTimeItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignNominalDateAndTimeAssignment;
                num: Standard_Integer): StepAP214_AutoDesignDateAndTimeItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignNominalDateAndTimeAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
type
  StepAP214_AutoDesignNominalDateAndTimeAssignmentbase_type* = StepBasic_DateAndTimeAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment::get_type_name(@)", header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignNominalDateAndTimeAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}