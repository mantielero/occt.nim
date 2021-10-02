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

discard "forward decl of StepRepr_ParametricRepresentationContext"
discard "forward decl of StepRepr_ParametricRepresentationContext"
type
  HandleC1C1* = Handle[StepReprParametricRepresentationContext]
  StepReprParametricRepresentationContext* {.
      importcpp: "StepRepr_ParametricRepresentationContext",
      header: "StepRepr_ParametricRepresentationContext.hxx", bycopy.} = object of StepReprRepresentationContext ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ParametricRepresentationContext


proc constructStepReprParametricRepresentationContext*(): StepReprParametricRepresentationContext {.
    constructor, importcpp: "StepRepr_ParametricRepresentationContext(@)",
    header: "StepRepr_ParametricRepresentationContext.hxx".}
type
  StepReprParametricRepresentationContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepRepr_ParametricRepresentationContext::get_type_name(@)", header: "StepRepr_ParametricRepresentationContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ParametricRepresentationContext::get_type_descriptor(@)",
    header: "StepRepr_ParametricRepresentationContext.hxx".}
proc dynamicType*(this: StepReprParametricRepresentationContext): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ParametricRepresentationContext.hxx".}