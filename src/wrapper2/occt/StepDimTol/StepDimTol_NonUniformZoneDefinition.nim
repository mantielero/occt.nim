##  Created on: 2015-07-13
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  StepDimTol_ToleranceZoneDefinition

discard "forward decl of StepDimTol_NonUniformZoneDefinition"
discard "forward decl of StepDimTol_NonUniformZoneDefinition"
type
  Handle_StepDimTol_NonUniformZoneDefinition* = handle[
      StepDimTol_NonUniformZoneDefinition]

## ! Representation of STEP entity NonUniformZoneDefinition

type
  StepDimTol_NonUniformZoneDefinition* {.importcpp: "StepDimTol_NonUniformZoneDefinition", header: "StepDimTol_NonUniformZoneDefinition.hxx",
                                        bycopy.} = object of StepDimTol_ToleranceZoneDefinition ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepDimTol_NonUniformZoneDefinition*(): StepDimTol_NonUniformZoneDefinition {.
    constructor, importcpp: "StepDimTol_NonUniformZoneDefinition(@)",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}
type
  StepDimTol_NonUniformZoneDefinitionbase_type* = StepDimTol_ToleranceZoneDefinition

proc get_type_name*(): cstring {.importcpp: "StepDimTol_NonUniformZoneDefinition::get_type_name(@)",
                              header: "StepDimTol_NonUniformZoneDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_NonUniformZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}
proc DynamicType*(this: StepDimTol_NonUniformZoneDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}