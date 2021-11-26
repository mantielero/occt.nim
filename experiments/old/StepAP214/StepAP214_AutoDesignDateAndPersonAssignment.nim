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

discard "forward decl of StepBasic_PersonAndOrganization"
discard "forward decl of StepBasic_PersonAndOrganizationRole"
discard "forward decl of StepAP214_AutoDesignDateAndPersonItem"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
type
  HandleC1C1* = Handle[StepAP214AutoDesignDateAndPersonAssignment]
  StepAP214AutoDesignDateAndPersonAssignment* {.
      importcpp: "StepAP214_AutoDesignDateAndPersonAssignment",
      header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx", bycopy.} = object of StepBasicPersonAndOrganizationAssignment ##
                                                                                                                        ## !
                                                                                                                        ## Returns
                                                                                                                        ## a
                                                                                                                        ## AutoDesignDateAndPersonAssignment


proc constructStepAP214AutoDesignDateAndPersonAssignment*(): StepAP214AutoDesignDateAndPersonAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignDateAndPersonAssignment(@)",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignDateAndPersonAssignment;
    aAssignedPersonAndOrganization: Handle[StepBasicPersonAndOrganization];
          aRole: Handle[StepBasicPersonAndOrganizationRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignDateAndPersonItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignDateAndPersonAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignDateAndPersonItem]) {.
    importcpp: "SetItems",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc items*(this: StepAP214AutoDesignDateAndPersonAssignment): Handle[
    StepAP214HArray1OfAutoDesignDateAndPersonItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignDateAndPersonAssignment; num: int): StepAP214AutoDesignDateAndPersonItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignDateAndPersonAssignment): int {.noSideEffect,
    importcpp: "NbItems",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
type
  StepAP214AutoDesignDateAndPersonAssignmentbaseType* = StepBasicPersonAndOrganizationAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignDateAndPersonAssignment::get_type_name(@)", header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignDateAndPersonAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignDateAndPersonAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_AutoDesignDateAndPersonAssignment.hxx".}