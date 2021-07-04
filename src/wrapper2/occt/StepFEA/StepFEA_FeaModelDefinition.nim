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

discard "forward decl of StepFEA_FeaModelDefinition"
discard "forward decl of StepFEA_FeaModelDefinition"
type
  Handle_StepFEA_FeaModelDefinition* = handle[StepFEA_FeaModelDefinition]

## ! Representation of STEP entity FeaModelDefinition

type
  StepFEA_FeaModelDefinition* {.importcpp: "StepFEA_FeaModelDefinition",
                               header: "StepFEA_FeaModelDefinition.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepFEA_FeaModelDefinition*(): StepFEA_FeaModelDefinition {.
    constructor, importcpp: "StepFEA_FeaModelDefinition(@)",
    header: "StepFEA_FeaModelDefinition.hxx".}
type
  StepFEA_FeaModelDefinitionbase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaModelDefinition::get_type_name(@)",
                              header: "StepFEA_FeaModelDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaModelDefinition::get_type_descriptor(@)",
    header: "StepFEA_FeaModelDefinition.hxx".}
proc DynamicType*(this: StepFEA_FeaModelDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaModelDefinition.hxx".}