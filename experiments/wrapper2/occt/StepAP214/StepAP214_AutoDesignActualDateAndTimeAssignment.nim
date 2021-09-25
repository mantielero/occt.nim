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

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP214_AutoDesignDateAndTimeItem"
discard "forward decl of StepAP214_AutoDesignActualDateAndTimeAssignment"
discard "forward decl of StepAP214_AutoDesignActualDateAndTimeAssignment"
type
  HandleStepAP214AutoDesignActualDateAndTimeAssignment* = Handle[
      StepAP214AutoDesignActualDateAndTimeAssignment]
  StepAP214AutoDesignActualDateAndTimeAssignment* {.
      importcpp: "StepAP214_AutoDesignActualDateAndTimeAssignment",
      header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx", bycopy.} = object of StepBasicDateAndTimeAssignment ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## AutoDesignActualDateAndTimeAssignment


proc constructStepAP214AutoDesignActualDateAndTimeAssignment*(): StepAP214AutoDesignActualDateAndTimeAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignActualDateAndTimeAssignment(@)",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignActualDateAndTimeAssignment;
          aAssignedDateAndTime: Handle[StepBasicDateAndTime];
          aRole: Handle[StepBasicDateTimeRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "Init",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignActualDateAndTimeAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc items*(this: StepAP214AutoDesignActualDateAndTimeAssignment): Handle[
    StepAP214HArray1OfAutoDesignDateAndTimeItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignActualDateAndTimeAssignment; num: int): StepAP214AutoDesignDateAndTimeItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignActualDateAndTimeAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
type
  StepAP214AutoDesignActualDateAndTimeAssignmentbaseType* = StepBasicDateAndTimeAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignActualDateAndTimeAssignment::get_type_name(@)", header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignActualDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignActualDateAndTimeAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignActualDateAndTimeAssignment.hxx".}
