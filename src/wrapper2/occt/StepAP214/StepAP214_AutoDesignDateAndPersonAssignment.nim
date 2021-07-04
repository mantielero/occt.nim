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
  StepAP214_HArray1OfAutoDesignDateAndPersonItem,
  ../StepBasic/StepBasic_PersonAndOrganizationAssignment,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_AutoDesignDateAndPersonItem"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
type
  Handle_StepAP214_AutoDesignDateAndPersonAssignment* = handle[
      StepAP214_AutoDesignDateAndPersonAssignment]
  StepAP214_AutoDesignDateAndPersonAssignment* {.
      importcpp: "StepAP214_AutoDesignDateAndPersonAssignment",
      header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx", bycopy.} = object of StepBasic_PersonAndOrganizationAssignment ##
                                                                                                                         ## !
                                                                                                                         ## Returns
                                                                                                                         ## a
                                                                                                                         ## AutoDesignDateAndPersonAssignment


proc constructStepAP214_AutoDesignDateAndPersonAssignment*(): StepAP214_AutoDesignDateAndPersonAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignDateAndPersonAssignment(@)",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc Init*(this: var StepAP214_AutoDesignDateAndPersonAssignment;
    aAssignedPersonAndOrganization: handle[StepBasic_PersonAndOrganization];
          aRole: handle[StepBasic_PersonAndOrganizationRole];
          aItems: handle[StepAP214_HArray1OfAutoDesignDateAndPersonItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignDateAndPersonAssignment;
              aItems: handle[StepAP214_HArray1OfAutoDesignDateAndPersonItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc Items*(this: StepAP214_AutoDesignDateAndPersonAssignment): handle[
    StepAP214_HArray1OfAutoDesignDateAndPersonItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignDateAndPersonAssignment;
                num: Standard_Integer): StepAP214_AutoDesignDateAndPersonItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc NbItems*(this: StepAP214_AutoDesignDateAndPersonAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
type
  StepAP214_AutoDesignDateAndPersonAssignmentbase_type* = StepBasic_PersonAndOrganizationAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignDateAndPersonAssignment::get_type_name(@)", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP214_AutoDesignDateAndPersonAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignDateAndPersonAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}