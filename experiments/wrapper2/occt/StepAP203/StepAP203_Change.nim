##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type, StepAP203_HArray1OfWorkItem,
  ../StepBasic/StepBasic_ActionAssignment

discard "forward decl of StepBasic_Action"
discard "forward decl of StepAP203_Change"
discard "forward decl of StepAP203_Change"
type
  Handle_StepAP203_Change* = handle[StepAP203_Change]

## ! Representation of STEP entity Change

type
  StepAP203_Change* {.importcpp: "StepAP203_Change",
                     header: "StepAP203_Change.hxx", bycopy.} = object of StepBasic_ActionAssignment ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepAP203_Change*(): StepAP203_Change {.constructor,
    importcpp: "StepAP203_Change(@)", header: "StepAP203_Change.hxx".}
proc Init*(this: var StepAP203_Change;
          aActionAssignment_AssignedAction: handle[StepBasic_Action];
          aItems: handle[StepAP203_HArray1OfWorkItem]) {.importcpp: "Init",
    header: "StepAP203_Change.hxx".}
proc Items*(this: StepAP203_Change): handle[StepAP203_HArray1OfWorkItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_Change.hxx".}
proc SetItems*(this: var StepAP203_Change;
              Items: handle[StepAP203_HArray1OfWorkItem]) {.importcpp: "SetItems",
    header: "StepAP203_Change.hxx".}
type
  StepAP203_Changebase_type* = StepBasic_ActionAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_Change::get_type_name(@)",
                              header: "StepAP203_Change.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_Change::get_type_descriptor(@)",
    header: "StepAP203_Change.hxx".}
proc DynamicType*(this: StepAP203_Change): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP203_Change.hxx".}