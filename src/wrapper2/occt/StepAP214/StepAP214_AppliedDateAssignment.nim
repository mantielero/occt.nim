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
  ../Standard/Standard, ../Standard/Standard_Type, StepAP214_HArray1OfDateItem,
  ../StepBasic/StepBasic_DateAssignment, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepAP214_DateItem"
discard "forward decl of StepAP214_AppliedDateAssignment"
discard "forward decl of StepAP214_AppliedDateAssignment"
type
  Handle_StepAP214_AppliedDateAssignment* = handle[StepAP214_AppliedDateAssignment]
  StepAP214_AppliedDateAssignment* {.importcpp: "StepAP214_AppliedDateAssignment", header: "StepAP214_AppliedDateAssignment.hxx",
                                    bycopy.} = object of StepBasic_DateAssignment ## !
                                                                             ## Returns a
                                                                             ## AppliedDateAssignment


proc constructStepAP214_AppliedDateAssignment*(): StepAP214_AppliedDateAssignment {.
    constructor, importcpp: "StepAP214_AppliedDateAssignment(@)",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc Init*(this: var StepAP214_AppliedDateAssignment;
          aAssignedDate: handle[StepBasic_Date];
          aRole: handle[StepBasic_DateRole];
          aItems: handle[StepAP214_HArray1OfDateItem]) {.importcpp: "Init",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc SetItems*(this: var StepAP214_AppliedDateAssignment;
              aItems: handle[StepAP214_HArray1OfDateItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedDateAssignment.hxx".}
proc Items*(this: StepAP214_AppliedDateAssignment): handle[
    StepAP214_HArray1OfDateItem] {.noSideEffect, importcpp: "Items",
                                  header: "StepAP214_AppliedDateAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AppliedDateAssignment; num: Standard_Integer): StepAP214_DateItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc NbItems*(this: StepAP214_AppliedDateAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedDateAssignment.hxx".}
type
  StepAP214_AppliedDateAssignmentbase_type* = StepBasic_DateAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedDateAssignment::get_type_name(@)",
                              header: "StepAP214_AppliedDateAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AppliedDateAssignment::get_type_descriptor(@)",
    header: "StepAP214_AppliedDateAssignment.hxx".}
proc DynamicType*(this: StepAP214_AppliedDateAssignment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedDateAssignment.hxx".}