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
  StepShape_TopologicalRepresentationItem

discard "forward decl of StepShape_Loop"
discard "forward decl of StepShape_Loop"
type
  Handle_StepShape_Loop* = handle[StepShape_Loop]
  StepShape_Loop* {.importcpp: "StepShape_Loop", header: "StepShape_Loop.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                                  ## !
                                                                                                                                  ## Returns
                                                                                                                                  ## a
                                                                                                                                  ## Loop


proc constructStepShape_Loop*(): StepShape_Loop {.constructor,
    importcpp: "StepShape_Loop(@)", header: "StepShape_Loop.hxx".}
type
  StepShape_Loopbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Loop::get_type_name(@)",
                              header: "StepShape_Loop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Loop::get_type_descriptor(@)",
    header: "StepShape_Loop.hxx".}
proc DynamicType*(this: StepShape_Loop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Loop.hxx".}