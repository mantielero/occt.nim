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

discard "forward decl of StepBasic_DesignContext"
discard "forward decl of StepBasic_DesignContext"
type
  HandleStepBasicDesignContext* = Handle[StepBasicDesignContext]

## ! class added to Schema AP214 around April 1996

type
  StepBasicDesignContext* {.importcpp: "StepBasic_DesignContext",
                           header: "StepBasic_DesignContext.hxx", bycopy.} = object of StepBasicProductDefinitionContext


proc constructStepBasicDesignContext*(): StepBasicDesignContext {.constructor,
    importcpp: "StepBasic_DesignContext(@)", header: "StepBasic_DesignContext.hxx".}
type
  StepBasicDesignContextbaseType* = StepBasicProductDefinitionContext

proc getTypeName*(): cstring {.importcpp: "StepBasic_DesignContext::get_type_name(@)",
                            header: "StepBasic_DesignContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DesignContext::get_type_descriptor(@)",
    header: "StepBasic_DesignContext.hxx".}
proc dynamicType*(this: StepBasicDesignContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DesignContext.hxx".}
