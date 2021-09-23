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
discard "forward decl of StepAP203_StartWork"
discard "forward decl of StepAP203_StartWork"
type
  Handle_StepAP203_StartWork* = handle[StepAP203_StartWork]

## ! Representation of STEP entity StartWork

type
  StepAP203_StartWork* {.importcpp: "StepAP203_StartWork",
                        header: "StepAP203_StartWork.hxx", bycopy.} = object of StepBasic_ActionAssignment ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepAP203_StartWork*(): StepAP203_StartWork {.constructor,
    importcpp: "StepAP203_StartWork(@)", header: "StepAP203_StartWork.hxx".}
proc Init*(this: var StepAP203_StartWork;
          aActionAssignment_AssignedAction: handle[StepBasic_Action];
          aItems: handle[StepAP203_HArray1OfWorkItem]) {.importcpp: "Init",
    header: "StepAP203_StartWork.hxx".}
proc Items*(this: StepAP203_StartWork): handle[StepAP203_HArray1OfWorkItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_StartWork.hxx".}
proc SetItems*(this: var StepAP203_StartWork;
              Items: handle[StepAP203_HArray1OfWorkItem]) {.importcpp: "SetItems",
    header: "StepAP203_StartWork.hxx".}
type
  StepAP203_StartWorkbase_type* = StepBasic_ActionAssignment

proc get_type_name*(): cstring {.importcpp: "StepAP203_StartWork::get_type_name(@)",
                              header: "StepAP203_StartWork.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_StartWork::get_type_descriptor(@)",
    header: "StepAP203_StartWork.hxx".}
proc DynamicType*(this: StepAP203_StartWork): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP203_StartWork.hxx".}