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
  StepAP214_HArray1OfAutoDesignGroupedItem,
  ../StepBasic/StepBasic_GroupAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Group"
discard "forward decl of StepAP214_AutoDesignGroupedItem"
discard "forward decl of StepAP214_AutoDesignGroupAssignment"
discard "forward decl of StepAP214_AutoDesignGroupAssignment"
type
  Handle_StepAP214_AutoDesignGroupAssignment* = handle[
      StepAP214_AutoDesignGroupAssignment]
  StepAP214_AutoDesignGroupAssignment* {.importcpp: "StepAP214_AutoDesignGroupAssignment", header: "StepAP214_AutoDesignGroupAssignment.hxx",
                                        bycopy.} = object of StepBasic_GroupAssignment ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## AutoDesignGroupAssignment


proc constructStepAP214_AutoDesignGroupAssignment*(): StepAP214_AutoDesignGroupAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignGroupAssignment(@)",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignGroupAssignment;
          aAssignedGroup: handle[StepBasic_Group];
          aItems: handle[StepAP214_HArray1OfAutoDesignGroupedItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignGroupAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignGroupedItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignGroupAssignment): handle[
    StepAP214_HArray1OfAutoDesignGroupedItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignGroupAssignment; num: Standard_Integer): StepAP214_AutoDesignGroupedItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignGroupAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
type
  StepAP214_AutoDesignGroupAssignmentbase_type* = StepBasic_GroupAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignGroupAssignment::get_type_name(@)",
                              header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AutoDesignGroupAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignGroupAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignGroupAssignment.hxx".}