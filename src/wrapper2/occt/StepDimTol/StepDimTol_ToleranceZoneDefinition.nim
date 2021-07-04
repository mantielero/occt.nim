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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../StepRepr/StepRepr_HArray1OfShapeAspect,
  ../StepRepr/StepRepr_ShapeAspect, StepDimTol_ToleranceZone

discard "forward decl of StepRepr_HArray1OfShapeAspect"
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
type
  Handle_StepDimTol_ToleranceZoneDefinition* = handle[
      StepDimTol_ToleranceZoneDefinition]

## ! Representation of STEP entity ToleranceZoneDefinition

type
  StepDimTol_ToleranceZoneDefinition* {.importcpp: "StepDimTol_ToleranceZoneDefinition", header: "StepDimTol_ToleranceZoneDefinition.hxx",
                                       bycopy.} = object of Standard_Transient ## ! Empty
                                                                          ## constructor


proc constructStepDimTol_ToleranceZoneDefinition*(): StepDimTol_ToleranceZoneDefinition {.
    constructor, importcpp: "StepDimTol_ToleranceZoneDefinition(@)",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc Init*(this: var StepDimTol_ToleranceZoneDefinition;
          theZone: handle[StepDimTol_ToleranceZone];
          theBoundaries: handle[StepRepr_HArray1OfShapeAspect]) {.
    importcpp: "Init", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc Boundaries*(this: StepDimTol_ToleranceZoneDefinition): handle[
    StepRepr_HArray1OfShapeAspect] {.noSideEffect, importcpp: "Boundaries", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc SetBoundaries*(this: var StepDimTol_ToleranceZoneDefinition;
                   theBoundaries: handle[StepRepr_HArray1OfShapeAspect]) {.
    importcpp: "SetBoundaries", header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc NbBoundaries*(this: StepDimTol_ToleranceZoneDefinition): Standard_Integer {.
    noSideEffect, importcpp: "NbBoundaries",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc BoundariesValue*(this: StepDimTol_ToleranceZoneDefinition;
                     theNum: Standard_Integer): handle[StepRepr_ShapeAspect] {.
    noSideEffect, importcpp: "BoundariesValue",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc SetBoundariesValue*(this: var StepDimTol_ToleranceZoneDefinition;
                        theNum: Standard_Integer;
                        theItem: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetBoundariesValue",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc Zone*(this: var StepDimTol_ToleranceZoneDefinition): handle[
    StepDimTol_ToleranceZone] {.importcpp: "Zone",
                               header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc SetZone*(this: var StepDimTol_ToleranceZoneDefinition;
             theZone: handle[StepDimTol_ToleranceZone]) {.importcpp: "SetZone",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
type
  StepDimTol_ToleranceZoneDefinitionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ToleranceZoneDefinition::get_type_name(@)",
                              header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ToleranceZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}
proc DynamicType*(this: StepDimTol_ToleranceZoneDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ToleranceZoneDefinition.hxx".}