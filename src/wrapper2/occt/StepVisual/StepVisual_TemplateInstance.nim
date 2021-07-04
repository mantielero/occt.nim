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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepRepr/StepRepr_MappedItem

discard "forward decl of StepVisual_TemplateInstance"
discard "forward decl of StepVisual_TemplateInstance"
type
  Handle_StepVisual_TemplateInstance* = handle[StepVisual_TemplateInstance]
  StepVisual_TemplateInstance* {.importcpp: "StepVisual_TemplateInstance",
                                header: "StepVisual_TemplateInstance.hxx", bycopy.} = object of StepRepr_MappedItem ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## TemplateInstance


proc constructStepVisual_TemplateInstance*(): StepVisual_TemplateInstance {.
    constructor, importcpp: "StepVisual_TemplateInstance(@)",
    header: "StepVisual_TemplateInstance.hxx".}
type
  StepVisual_TemplateInstancebase_type* = StepRepr_MappedItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TemplateInstance::get_type_name(@)",
                              header: "StepVisual_TemplateInstance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_TemplateInstance::get_type_descriptor(@)",
    header: "StepVisual_TemplateInstance.hxx".}
proc DynamicType*(this: StepVisual_TemplateInstance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TemplateInstance.hxx".}