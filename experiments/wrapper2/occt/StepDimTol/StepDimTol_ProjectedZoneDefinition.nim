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

discard "forward decl of StepDimTol_ProjectedZoneDefinition"
discard "forward decl of StepDimTol_ProjectedZoneDefinition"
type
  HandleC1C1* = Handle[StepDimTolProjectedZoneDefinition]

## ! Representation of STEP entity ProjectedZoneDefinition

type
  StepDimTolProjectedZoneDefinition* {.importcpp: "StepDimTol_ProjectedZoneDefinition", header: "StepDimTol_ProjectedZoneDefinition.hxx",
                                      bycopy.} = object of StepDimTolToleranceZoneDefinition ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepDimTolProjectedZoneDefinition*(): StepDimTolProjectedZoneDefinition {.
    constructor, importcpp: "StepDimTol_ProjectedZoneDefinition(@)",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc init*(this: var StepDimTolProjectedZoneDefinition;
          theZone: Handle[StepDimTolToleranceZone];
          theBoundaries: Handle[StepReprHArray1OfShapeAspect];
          theProjectionEnd: Handle[StepReprShapeAspect];
          theProjectionLength: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc projectionEnd*(this: StepDimTolProjectedZoneDefinition): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ProjectionEnd",
                          header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc setProjectionEnd*(this: var StepDimTolProjectedZoneDefinition;
                      theProjectionEnd: Handle[StepReprShapeAspect]) {.
    importcpp: "SetProjectionEnd",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc projectionLength*(this: var StepDimTolProjectedZoneDefinition): Handle[
    StepBasicLengthMeasureWithUnit] {.importcpp: "ProjectionLength", header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc setProjectionLength*(this: var StepDimTolProjectedZoneDefinition;
    theProjectionLength: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetProjectionLength",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
type
  StepDimTolProjectedZoneDefinitionbaseType* = StepDimTolToleranceZoneDefinition

proc getTypeName*(): cstring {.importcpp: "StepDimTol_ProjectedZoneDefinition::get_type_name(@)",
                            header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_ProjectedZoneDefinition::get_type_descriptor(@)",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}
proc dynamicType*(this: StepDimTolProjectedZoneDefinition): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ProjectedZoneDefinition.hxx".}

























