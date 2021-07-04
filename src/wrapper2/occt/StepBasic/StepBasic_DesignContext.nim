##  Created on: 1996-10-07
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepBasic_ProductDefinitionContext

discard "forward decl of StepBasic_DesignContext"
discard "forward decl of StepBasic_DesignContext"
type
  Handle_StepBasic_DesignContext* = handle[StepBasic_DesignContext]

## ! class added to Schema AP214 around April 1996

type
  StepBasic_DesignContext* {.importcpp: "StepBasic_DesignContext",
                            header: "StepBasic_DesignContext.hxx", bycopy.} = object of StepBasic_ProductDefinitionContext


proc constructStepBasic_DesignContext*(): StepBasic_DesignContext {.constructor,
    importcpp: "StepBasic_DesignContext(@)", header: "StepBasic_DesignContext.hxx".}
type
  StepBasic_DesignContextbase_type* = StepBasic_ProductDefinitionContext

proc get_type_name*(): cstring {.importcpp: "StepBasic_DesignContext::get_type_name(@)",
                              header: "StepBasic_DesignContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DesignContext::get_type_descriptor(@)",
    header: "StepBasic_DesignContext.hxx".}
proc DynamicType*(this: StepBasic_DesignContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DesignContext.hxx".}