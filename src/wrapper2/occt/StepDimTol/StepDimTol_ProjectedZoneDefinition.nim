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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepBasic/StepBasic_LengthMeasureWithUnit,
  StepDimTol_ToleranceZoneDefinition, ../StepRepr/StepRepr_ShapeAspect

discard "forward decl of StepDimTol_ProjectedZoneDefinition"
discard "forward decl of StepDimTol_ProjectedZoneDefinition"
type
  Handle_StepDimTol_ProjectedZoneDefinition* = handle[
      StepDimTol_ProjectedZoneDefinition]

## ! Representation of STEP entity ProjectedZoneDefinition

type
  StepDimTol_ProjectedZoneDefinition* {.importcpp: "StepDimTol_ProjectedZoneDefinition", header: "StepDimTol_ProjectedZoneDefinition.hxx",
                                       bycopy.} = object of StepDimTol_ToleranceZoneDefinition ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepDimTol_ProjectedZoneDefinition*(): StepDimTol_ProjectedZoneDefinition {.
    constructor, importcpp: "StepDimTol_ProjectedZoneDefinition(@)",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc Init*(this: var StepDimTol_ProjectedZoneDefinition;
          theZone: handle[StepDimTol_ToleranceZone];
          theBoundaries: handle[StepRepr_HArray1OfShapeAspect];
          theProjectionEnd: handle[StepRepr_ShapeAspect];
          theProjectionLength: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc ProjectionEnd*(this: StepDimTol_ProjectedZoneDefinition): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ProjectionEnd",
                           header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc SetProjectionEnd*(this: var StepDimTol_ProjectedZoneDefinition;
                      theProjectionEnd: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetProjectionEnd",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc ProjectionLength*(this: var StepDimTol_ProjectedZoneDefinition): handle[
    StepBasic_LengthMeasureWithUnit] {.importcpp: "ProjectionLength", header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc SetProjectionLength*(this: var StepDimTol_ProjectedZoneDefinition;
    theProjectionLength: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetProjectionLength",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
type
  StepDimTol_ProjectedZoneDefinitionbase_type* = StepDimTol_ToleranceZoneDefinition

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ProjectedZoneDefinition::get_type_name(@)",
                              header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ProjectedZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc DynamicType*(this: StepDimTol_ProjectedZoneDefinition): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}