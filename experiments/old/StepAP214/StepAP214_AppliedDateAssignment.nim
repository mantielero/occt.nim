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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepAP214_DateItem"
discard "forward decl of StepAP214_AppliedDateAssignment"
discard "forward decl of StepAP214_AppliedDateAssignment"
type
  HandleC1C1* = Handle[StepAP214AppliedDateAssignment]
  StepAP214AppliedDateAssignment* {.importcpp: "StepAP214_AppliedDateAssignment", header: "StepAP214_AppliedDateAssignment.hxx",
                                   bycopy.} = object of StepBasicDateAssignment ## !
                                                                           ## Returns a
                                                                           ## AppliedDateAssignment


proc constructStepAP214AppliedDateAssignment*(): StepAP214AppliedDateAssignment {.
    constructor, importcpp: "StepAP214_AppliedDateAssignment(@)",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc init*(this: var StepAP214AppliedDateAssignment;
          aAssignedDate: Handle[StepBasicDate]; aRole: Handle[StepBasicDateRole];
          aItems: Handle[StepAP214HArray1OfDateItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc setItems*(this: var StepAP214AppliedDateAssignment;
              aItems: Handle[StepAP214HArray1OfDateItem]) {.importcpp: "SetItems",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc items*(this: StepAP214AppliedDateAssignment): Handle[
    StepAP214HArray1OfDateItem] {.noSideEffect, importcpp: "Items",
                                 header: "StepAP214_AppliedDateAssignment.hxx".}
proc itemsValue*(this: StepAP214AppliedDateAssignment; num: int): StepAP214DateItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc nbItems*(this: StepAP214AppliedDateAssignment): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedDateAssignment.hxx".}
type
  StepAP214AppliedDateAssignmentbaseType* = StepBasicDateAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedDateAssignment::get_type_name(@)",
                            header: "StepAP214_AppliedDateAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AppliedDateAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc dynamicType*(this: StepAP214AppliedDateAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedDateAssignment.hxx".}