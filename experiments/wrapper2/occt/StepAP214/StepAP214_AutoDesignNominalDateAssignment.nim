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

discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_DateRole"
discard "forward decl of StepAP214_AutoDesignDatedItem"
discard "forward decl of StepAP214_AutoDesignNominalDateAssignment"
discard "forward decl of StepAP214_AutoDesignNominalDateAssignment"
type
  HandleC1C1* = Handle[StepAP214AutoDesignNominalDateAssignment]
  StepAP214AutoDesignNominalDateAssignment* {.
      importcpp: "StepAP214_AutoDesignNominalDateAssignment",
      header: "StepAP214_AutoDesignNominalDateAssignment.hxx", bycopy.} = object of StepBasicDateAssignment ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## AutoDesignNominalDateAssignment


proc constructStepAP214AutoDesignNominalDateAssignment*(): StepAP214AutoDesignNominalDateAssignment {.
    constructor, importcpp: "StepAP214_AutoDesignNominalDateAssignment(@)",
    header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc init*(this: var StepAP214AutoDesignNominalDateAssignment;
          aAssignedDate: Handle[StepBasicDate]; aRole: Handle[StepBasicDateRole];
          aItems: Handle[StepAP214HArray1OfAutoDesignDatedItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc setItems*(this: var StepAP214AutoDesignNominalDateAssignment;
              aItems: Handle[StepAP214HArray1OfAutoDesignDatedItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc items*(this: StepAP214AutoDesignNominalDateAssignment): Handle[
    StepAP214HArray1OfAutoDesignDatedItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc itemsValue*(this: StepAP214AutoDesignNominalDateAssignment; num: cint): StepAP214AutoDesignDatedItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc nbItems*(this: StepAP214AutoDesignNominalDateAssignment): cint {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
type
  StepAP214AutoDesignNominalDateAssignmentbaseType* = StepBasicDateAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignNominalDateAssignment::get_type_name(@)", header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_AutoDesignNominalDateAssignment::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}
proc dynamicType*(this: StepAP214AutoDesignNominalDateAssignment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_AutoDesignNominalDateAssignment.hxx".}

























