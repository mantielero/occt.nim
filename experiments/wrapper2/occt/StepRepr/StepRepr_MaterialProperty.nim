##  Created on: 2002-12-14
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_PropertyDefinition

discard "forward decl of StepRepr_MaterialProperty"
discard "forward decl of StepRepr_MaterialProperty"
type
  Handle_StepRepr_MaterialProperty* = handle[StepRepr_MaterialProperty]

## ! Representation of STEP entity MaterialProperty

type
  StepRepr_MaterialProperty* {.importcpp: "StepRepr_MaterialProperty",
                              header: "StepRepr_MaterialProperty.hxx", bycopy.} = object of StepRepr_PropertyDefinition ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepRepr_MaterialProperty*(): StepRepr_MaterialProperty {.
    constructor, importcpp: "StepRepr_MaterialProperty(@)",
    header: "StepRepr_MaterialProperty.hxx".}
type
  StepRepr_MaterialPropertybase_type* = StepRepr_PropertyDefinition

proc get_type_name*(): cstring {.importcpp: "StepRepr_MaterialProperty::get_type_name(@)",
                              header: "StepRepr_MaterialProperty.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_MaterialProperty::get_type_descriptor(@)",
    header: "StepRepr_MaterialProperty.hxx".}
proc DynamicType*(this: StepRepr_MaterialProperty): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_MaterialProperty.hxx".}