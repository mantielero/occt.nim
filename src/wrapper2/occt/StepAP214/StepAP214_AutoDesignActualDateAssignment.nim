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
  StepAP214_HArray1OfAutoDesignDatedItem, ../StepBasic/StepBasic_DateAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepAP214_AutoDesignDatedItem"
discard "forward decl of StepAP214_AutoDesignActualDateAssignment"
discard "forward decl of StepAP214_AutoDesignActualDateAssignment"
type
  Handle_StepAP214_AutoDesignActualDateAssignment* = handle[
      StepAP214_AutoDesignActualDateAssignment]
  StepAP214_AutoDesignActualDateAssignment* {.
      importcpp: "StepAP214_AutoDesignActualDateAssignment",
      header: "StepAP214_AutoDesignActualDateAssignment.hxx", bycopy.} = object of StepBasic_DateAssignment ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## AutoDesignActualDateAssignment


proc constructStepAP214_AutoDesignActualDateAssignment*(): StepAP214_AutoDesignActualDateAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignActualDateAssignment(@)",
    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignActualDateAssignment;
          aAssignedDate: handle[StepBasic_Date];
          aRole: handle[StepBasic_DateRole];
          aItems: handle[StepAP214_HArray1OfAutoDesignDatedItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignActualDateAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignDatedItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignActualDateAssignment): handle[
    StepAP214_HArray1OfAutoDesignDatedItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignActualDateAssignment;
                num: Standard_Integer): StepAP214_AutoDesignDatedItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignActualDateAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
type
  StepAP214_AutoDesignActualDateAssignmentbase_type* = StepBasic_DateAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignActualDateAssignment::get_type_name(@)", header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignActualDateAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignActualDateAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AutoDesignActualDateAssignment.hxx".}