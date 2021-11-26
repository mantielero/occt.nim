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

discard "forward decl of StepBasic_Group"
discard "forward decl of StepAP214_AutoDesignGroupedItem"
discard "forward decl of StepAP214_AutoDesignGroupAssignment"
discard "forward decl of StepAP214_AutoDesignGroupAssignment"
type
  HandleC1C1* = Handle[StepAP214AutoDesignGroupAssignment]
  StepAP214AutoDesignGroupAssignment* {.importcpp: "StepAP214_AutoDesignGroupAssignment", header: "StepAP214_AutoDesignGroupAssignment.hxx",
                                       bycopy.} = object of StepBasicGroupAssignment ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## AutoDesignGroupAssignment


proc constructStepAP214AutoDesignGroupAssignment*(): StepAP214AutoDesignGroupAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignGroupAssignment(@)",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignGroupAssignment;
          aAssignedGroup: Handle[StepBasicGroup];
          aItems: Handle[StepAP214HArray1OfAutoDesignGroupedItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignGroupAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignGroupedItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc items*(this: StepAP214AutoDesignGroupAssignment): Handle[
    StepAP214HArray1OfAutoDesignGroupedItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignGroupAssignment; num: int): StepAP214AutoDesignGroupedItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignGroupAssignment): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignGroupAssignment.hxx".}
type
  StepAP214AutoDesignGroupAssignmentbaseType* = StepBasicGroupAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignGroupAssignment::get_type_name(@)",
                            header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AutoDesignGroupAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignGroupAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}