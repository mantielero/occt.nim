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
  StepDimTol_RunoutZoneOrientation, StepDimTol_ToleranceZoneDefinition,
  ../Standard/Standard_Integer

discard "forward decl of StepRepr_HArray1OfShapeAspect"
discard "forward decl of StepDimTol_RunoutZoneDefinition"
discard "forward decl of StepDimTol_RunoutZoneDefinition"
type
  Handle_StepDimTol_RunoutZoneDefinition* = handle[StepDimTol_RunoutZoneDefinition]

## ! Representation of STEP entity ToleranceZoneDefinition

type
  StepDimTol_RunoutZoneDefinition* {.importcpp: "StepDimTol_RunoutZoneDefinition", header: "StepDimTol_RunoutZoneDefinition.hxx",
                                    bycopy.} = object of StepDimTol_ToleranceZoneDefinition ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructStepDimTol_RunoutZoneDefinition*(): StepDimTol_RunoutZoneDefinition {.
    constructor, importcpp: "StepDimTol_RunoutZoneDefinition(@)",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc Init*(this: var StepDimTol_RunoutZoneDefinition;
          theZone: handle[StepDimTol_ToleranceZone];
          theBoundaries: handle[StepRepr_HArray1OfShapeAspect];
          theOrientation: handle[StepDimTol_RunoutZoneOrientation]) {.
    importcpp: "Init", header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc Orientation*(this: StepDimTol_RunoutZoneDefinition): handle[
    StepDimTol_RunoutZoneOrientation] {.noSideEffect, importcpp: "Orientation", header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc SetOrientation*(this: var StepDimTol_RunoutZoneDefinition;
                    theOrientation: handle[StepDimTol_RunoutZoneOrientation]) {.
    importcpp: "SetOrientation", header: "StepDimTol_RunoutZoneDefinition.hxx".}
type
  StepDimTol_RunoutZoneDefinitionbase_type* = StepDimTol_ToleranceZoneDefinition

proc get_type_name*(): cstring {.importcpp: "StepDimTol_RunoutZoneDefinition::get_type_name(@)",
                              header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_RunoutZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc DynamicType*(this: StepDimTol_RunoutZoneDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}