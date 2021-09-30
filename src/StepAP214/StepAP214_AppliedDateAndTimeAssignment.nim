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

discard "forward decl of StepBasic_DateAndTime"
discard "forward decl of StepBasic_DateTimeRole"
discard "forward decl of StepAP214_DateAndTimeItem"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
discard "forward decl of StepAP214_AppliedDateAndTimeAssignment"
type
  HandleC1C1* = Handle[StepAP214AppliedDateAndTimeAssignment]
  StepAP214AppliedDateAndTimeAssignment* {.
      importcpp: "StepAP214_AppliedDateAndTimeAssignment",
      header: "StepAP214_AppliedDateAndTimeAssignment.hxx", bycopy.} = object of StepBasicDateAndTimeAssignment ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## AppliedDateAndTimeAssignment


proc constructStepAP214AppliedDateAndTimeAssignment*(): StepAP214AppliedDateAndTimeAssignment {.
    constructor, importcpp: "StepAP214_AppliedDateAndTimeAssignment(@)",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc init*(this: var StepAP214AppliedDateAndTimeAssignment;
          aAssignedDateAndTime: Handle[StepBasicDateAndTime];
          aRole: Handle[StepBasicDateTimeRole];
          aItems: Handle[StepAP214HArray1OfDateAndTimeItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedDateAndTimeAssignment;
              aItems: Handle[StepAP214HArray1OfDateAndTimeItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc items*(this: StepAP214AppliedDateAndTimeAssignment): Handle[
    StepAP214HArray1OfDateAndTimeItem] {.noSideEffect, importcpp: "Items", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedDateAndTimeAssignment; num: cint): StepAP214DateAndTimeItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedDateAndTimeAssignment): cint {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
type
  StepAP214AppliedDateAndTimeAssignmentbaseType* = StepBasicDateAndTimeAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedDateAndTimeAssignment::get_type_name(@)", header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AppliedDateAndTimeAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedDateAndTimeAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedDateAndTimeAssignment.hxx".}

























