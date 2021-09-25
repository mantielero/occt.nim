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
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
type
  HandleStepDimTolToleranceZoneDefinition* = Handle[
      StepDimTolToleranceZoneDefinition]

## ! Representation of STEP entity ToleranceZoneDefinition

type
  StepDimTolToleranceZoneDefinition* {.importcpp: "StepDimTol_ToleranceZoneDefinition", header: "StepDimTol_ToleranceZoneDefinition.hxx",
                                      bycopy.} = object of StandardTransient ## ! Empty
                                                                        ## constructor


proc constructStepDimTolToleranceZoneDefinition*(): StepDimTolToleranceZoneDefinition {.
    constructor, importcpp: "StepDimTol_ToleranceZoneDefinition(@)",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc init*(this: var StepDimTolToleranceZoneDefinition;
          theZone: Handle[StepDimTolToleranceZone];
          theBoundaries: Handle[StepReprHArray1OfShapeAspect]) {.
    importcpp: "Init", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc boundaries*(this: StepDimTolToleranceZoneDefinition): Handle[
    StepReprHArray1OfShapeAspect] {.noSideEffect, importcpp: "Boundaries", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc setBoundaries*(this: var StepDimTolToleranceZoneDefinition;
                   theBoundaries: Handle[StepReprHArray1OfShapeAspect]) {.
    importcpp: "SetBoundaries", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc nbBoundaries*(this: StepDimTolToleranceZoneDefinition): int {.noSideEffect,
    importcpp: "NbBoundaries", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc boundariesValue*(this: StepDimTolToleranceZoneDefinition; theNum: int): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "BoundariesValue",
                          header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc setBoundariesValue*(this: var StepDimTolToleranceZoneDefinition; theNum: int;
                        theItem: Handle[StepReprShapeAspect]) {.
    importcpp: "SetBoundariesValue",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc zone*(this: var StepDimTolToleranceZoneDefinition): Handle[
    StepDimTolToleranceZone] {.importcpp: "Zone",
                              header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc setZone*(this: var StepDimTolToleranceZoneDefinition;
             theZone: Handle[StepDimTolToleranceZone]) {.importcpp: "SetZone",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
type
  StepDimTolToleranceZoneDefinitionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_ToleranceZoneDefinition::get_type_name(@)",
                            header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_ToleranceZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc dynamicType*(this: StepDimTolToleranceZoneDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
