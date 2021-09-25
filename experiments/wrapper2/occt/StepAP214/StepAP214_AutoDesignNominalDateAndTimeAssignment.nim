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
discard "forward decl of StepAP214_AutoDesignNominalDateAndTimeAssignment"
discard "forward decl of StepAP214_AutoDesignNominalDateAndTimeAssignment"
type
  HandleStepAP214AutoDesignNominalDateAndTimeAssignment* = Handle[
      StepAP214AutoDesignNominalDateAndTimeAssignment]
  StepAP214AutoDesignNominalDateAndTimeAssignment* {.
      importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment",
      header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx", bycopy.} = object of StepBasicDateAndTimeAssignment ##
                                                                                                                   ## !
                                                                                                                   ## Returns
                                                                                                                   ## a
                                                                                                                   ## AutoDesignNominalDateAndTimeAssignment


proc constructStepAP214AutoDesignNominalDateAndTimeAssignment*(): StepAP214AutoDesignNominalDateAndTimeAssignment {.
    constructor,
    importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment(@)",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignNominalDateAndTimeAssignment;
          aAssignedDateAndTime: Handle[StepBasicDateAndTime];
          aRole: Handle[StepBasicDateTimeRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "Init",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignNominalDateAndTimeAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignDateAndTimeItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc items*(this: StepAP214AutoDesignNominalDateAndTimeAssignment): Handle[
    StepAP214HArray1OfAutoDesignDateAndTimeItem] {.noSideEffect,
    importcpp: "Items",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignNominalDateAndTimeAssignment; num: int): StepAP214AutoDesignDateAndTimeItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignNominalDateAndTimeAssignment): int {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
type
  StepAP214AutoDesignNominalDateAndTimeAssignmentbaseType* = StepBasicDateAndTimeAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment::get_type_name(@)", header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignNominalDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignNominalDateAndTimeAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepAP214_AutoDesignNominalDateAndTimeAssignment.hxx".}
