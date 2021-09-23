##  Created on: 1996-07-24
##  Created by: Frederic MAUPAS
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ProductContext

discard "forward decl of StepBasic_MechanicalContext"
discard "forward decl of StepBasic_MechanicalContext"
type
  Handle_StepBasic_MechanicalContext* = handle[StepBasic_MechanicalContext]
  StepBasic_MechanicalContext* {.importcpp: "StepBasic_MechanicalContext",
                                header: "StepBasic_MechanicalContext.hxx", bycopy.} = object of StepBasic_ProductContext ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## MechanicalContext


proc constructStepBasic_MechanicalContext*(): StepBasic_MechanicalContext {.
    constructor, importcpp: "StepBasic_MechanicalContext(@)",
    header: "StepBasic_MechanicalContext.hxx".}
type
  StepBasic_MechanicalContextbase_type* = StepBasic_ProductContext

proc get_type_name*(): cstring {.importcpp: "StepBasic_MechanicalContext::get_type_name(@)",
                              header: "StepBasic_MechanicalContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_MechanicalContext::get_type_descriptor(@)",
    header: "StepBasic_MechanicalContext.hxx".}
proc DynamicType*(this: StepBasic_MechanicalContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_MechanicalContext.hxx".}