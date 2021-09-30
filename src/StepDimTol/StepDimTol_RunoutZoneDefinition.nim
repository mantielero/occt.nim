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

discard "forward decl of StepRepr_HArray1OfShapeAspect"
discard "forward decl of StepDimTol_RunoutZoneDefinition"
discard "forward decl of StepDimTol_RunoutZoneDefinition"
type
  HandleC1C1* = Handle[StepDimTolRunoutZoneDefinition]

## ! Representation of STEP entity ToleranceZoneDefinition

type
  StepDimTolRunoutZoneDefinition* {.importcpp: "StepDimTol_RunoutZoneDefinition", header: "StepDimTol_RunoutZoneDefinition.hxx",
                                   bycopy.} = object of StepDimTolToleranceZoneDefinition ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor


proc constructStepDimTolRunoutZoneDefinition*(): StepDimTolRunoutZoneDefinition {.
    constructor, importcpp: "StepDimTol_RunoutZoneDefinition(@)",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc init*(this: var StepDimTolRunoutZoneDefinition;
          theZone: Handle[StepDimTolToleranceZone];
          theBoundaries: Handle[StepReprHArray1OfShapeAspect];
          theOrientation: Handle[StepDimTolRunoutZoneOrientation]) {.
    importcpp: "Init", header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc orientation*(this: StepDimTolRunoutZoneDefinition): Handle[
    StepDimTolRunoutZoneOrientation] {.noSideEffect, importcpp: "Orientation", header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc setOrientation*(this: var StepDimTolRunoutZoneDefinition;
                    theOrientation: Handle[StepDimTolRunoutZoneOrientation]) {.
    importcpp: "SetOrientation", header: "StepDimTol_RunoutZoneDefinition.hxx".}
type
  StepDimTolRunoutZoneDefinitionbaseType* = StepDimTolToleranceZoneDefinition

proc getTypeName*(): cstring {.importcpp: "StepDimTol_RunoutZoneDefinition::get_type_name(@)",
                            header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_RunoutZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}
proc dynamicType*(this: StepDimTolRunoutZoneDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RunoutZoneDefinition.hxx".}

























