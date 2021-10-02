##  Created on: 2002-12-12
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

discard "forward decl of StepFEA_FeaParametricPoint"
discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepFEA_CurveElementLocation"
type
  HandleC1C1* = Handle[StepFEA_CurveElementLocation]

## ! Representation of STEP entity CurveElementLocation

type
  StepFEA_CurveElementLocation* {.importcpp: "StepFEA_CurveElementLocation",
                                 header: "StepFEA_CurveElementLocation.hxx",
                                 bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepFEA_CurveElementLocation*(): StepFEA_CurveElementLocation {.
    constructor, importcpp: "StepFEA_CurveElementLocation(@)",
    header: "StepFEA_CurveElementLocation.hxx".}
proc init*(this: var StepFEA_CurveElementLocation;
          aCoordinate: Handle[StepFEA_FeaParametricPoint]) {.importcpp: "Init",
    header: "StepFEA_CurveElementLocation.hxx".}
proc coordinate*(this: StepFEA_CurveElementLocation): Handle[
    StepFEA_FeaParametricPoint] {.noSideEffect, importcpp: "Coordinate",
                                 header: "StepFEA_CurveElementLocation.hxx".}
proc setCoordinate*(this: var StepFEA_CurveElementLocation;
                   coordinate: Handle[StepFEA_FeaParametricPoint]) {.
    importcpp: "SetCoordinate", header: "StepFEA_CurveElementLocation.hxx".}
type
  StepFEA_CurveElementLocationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_CurveElementLocation::get_type_name(@)",
                            header: "StepFEA_CurveElementLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_CurveElementLocation::get_type_descriptor(@)",
    header: "StepFEA_CurveElementLocation.hxx".}
proc dynamicType*(this: StepFEA_CurveElementLocation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementLocation.hxx".}