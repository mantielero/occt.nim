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

discard "forward decl of StepDimTol_NonUniformZoneDefinition"
discard "forward decl of StepDimTol_NonUniformZoneDefinition"
type
  HandleC1C1* = Handle[StepDimTolNonUniformZoneDefinition]

## ! Representation of STEP entity NonUniformZoneDefinition

type
  StepDimTolNonUniformZoneDefinition* {.importcpp: "StepDimTol_NonUniformZoneDefinition", header: "StepDimTol_NonUniformZoneDefinition.hxx",
                                       bycopy.} = object of StepDimTolToleranceZoneDefinition ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepDimTolNonUniformZoneDefinition*(): StepDimTolNonUniformZoneDefinition {.
    constructor, importcpp: "StepDimTol_NonUniformZoneDefinition(@)",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}
type
  StepDimTolNonUniformZoneDefinitionbaseType* = StepDimTolToleranceZoneDefinition

proc getTypeName*(): cstring {.importcpp: "StepDimTol_NonUniformZoneDefinition::get_type_name(@)",
                            header: "StepDimTol_NonUniformZoneDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_NonUniformZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}
proc dynamicType*(this: StepDimTolNonUniformZoneDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_NonUniformZoneDefinition.hxx".}