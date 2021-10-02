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

discard "forward decl of StepBasic_Action"
discard "forward decl of StepAP203_StartWork"
discard "forward decl of StepAP203_StartWork"
type
  HandleC1C1* = Handle[StepAP203StartWork]

## ! Representation of STEP entity StartWork

type
  StepAP203StartWork* {.importcpp: "StepAP203_StartWork",
                       header: "StepAP203_StartWork.hxx", bycopy.} = object of StepBasicActionAssignment ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepAP203StartWork*(): StepAP203StartWork {.constructor,
    importcpp: "StepAP203_StartWork(@)", header: "StepAP203_StartWork.hxx".}
proc init*(this: var StepAP203StartWork;
          aActionAssignmentAssignedAction: Handle[StepBasicAction];
          aItems: Handle[StepAP203HArray1OfWorkItem]) {.importcpp: "Init",
    header: "StepAP203_StartWork.hxx".}
proc items*(this: StepAP203StartWork): Handle[StepAP203HArray1OfWorkItem] {.
    noSideEffect, importcpp: "Items", header: "StepAP203_StartWork.hxx".}
proc setItems*(this: var StepAP203StartWork;
              items: Handle[StepAP203HArray1OfWorkItem]) {.importcpp: "SetItems",
    header: "StepAP203_StartWork.hxx".}
type
  StepAP203StartWorkbaseType* = StepBasicActionAssignment

proc getTypeName*(): cstring {.importcpp: "StepAP203_StartWork::get_type_name(@)",
                            header: "StepAP203_StartWork.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_StartWork::get_type_descriptor(@)",
    header: "StepAP203_StartWork.hxx".}
proc dynamicType*(this: StepAP203StartWork): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP203_StartWork.hxx".}