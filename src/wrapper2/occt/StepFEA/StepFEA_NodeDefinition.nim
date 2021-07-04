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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_ShapeAspect

discard "forward decl of StepFEA_NodeDefinition"
discard "forward decl of StepFEA_NodeDefinition"
type
  Handle_StepFEA_NodeDefinition* = handle[StepFEA_NodeDefinition]

## ! Representation of STEP entity NodeDefinition

type
  StepFEA_NodeDefinition* {.importcpp: "StepFEA_NodeDefinition",
                           header: "StepFEA_NodeDefinition.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepFEA_NodeDefinition*(): StepFEA_NodeDefinition {.constructor,
    importcpp: "StepFEA_NodeDefinition(@)", header: "StepFEA_NodeDefinition.hxx".}
type
  StepFEA_NodeDefinitionbase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepFEA_NodeDefinition::get_type_name(@)",
                              header: "StepFEA_NodeDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_NodeDefinition::get_type_descriptor(@)",
    header: "StepFEA_NodeDefinition.hxx".}
proc DynamicType*(this: StepFEA_NodeDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepFEA_NodeDefinition.hxx".}