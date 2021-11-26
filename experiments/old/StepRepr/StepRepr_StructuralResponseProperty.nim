##  Created on: 2002-12-15
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

discard "forward decl of StepRepr_StructuralResponseProperty"
discard "forward decl of StepRepr_StructuralResponseProperty"
type
  HandleC1C1* = Handle[StepReprStructuralResponseProperty]

## ! Representation of STEP entity StructuralResponseProperty

type
  StepReprStructuralResponseProperty* {.importcpp: "StepRepr_StructuralResponseProperty", header: "StepRepr_StructuralResponseProperty.hxx",
                                       bycopy.} = object of StepReprPropertyDefinition ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepReprStructuralResponseProperty*(): StepReprStructuralResponseProperty {.
    constructor, importcpp: "StepRepr_StructuralResponseProperty(@)",
    header: "StepRepr_StructuralResponseProperty.hxx".}
type
  StepReprStructuralResponsePropertybaseType* = StepReprPropertyDefinition

proc getTypeName*(): cstring {.importcpp: "StepRepr_StructuralResponseProperty::get_type_name(@)",
                            header: "StepRepr_StructuralResponseProperty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_StructuralResponseProperty::get_type_descriptor(@)",
    header: "StepRepr_StructuralResponseProperty.hxx".}
proc dynamicType*(this: StepReprStructuralResponseProperty): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_StructuralResponseProperty.hxx".}