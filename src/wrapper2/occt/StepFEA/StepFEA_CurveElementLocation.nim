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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepFEA_FeaParametricPoint"
discard "forward decl of StepFEA_CurveElementLocation"
discard "forward decl of StepFEA_CurveElementLocation"
type
  Handle_StepFEA_CurveElementLocation* = handle[StepFEA_CurveElementLocation]

## ! Representation of STEP entity CurveElementLocation

type
  StepFEA_CurveElementLocation* {.importcpp: "StepFEA_CurveElementLocation",
                                 header: "StepFEA_CurveElementLocation.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepFEA_CurveElementLocation*(): StepFEA_CurveElementLocation {.
    constructor, importcpp: "StepFEA_CurveElementLocation(@)",
    header: "StepFEA_CurveElementLocation.hxx".}
proc Init*(this: var StepFEA_CurveElementLocation;
          aCoordinate: handle[StepFEA_FeaParametricPoint]) {.importcpp: "Init",
    header: "StepFEA_CurveElementLocation.hxx".}
proc Coordinate*(this: StepFEA_CurveElementLocation): handle[
    StepFEA_FeaParametricPoint] {.noSideEffect, importcpp: "Coordinate",
                                 header: "StepFEA_CurveElementLocation.hxx".}
proc SetCoordinate*(this: var StepFEA_CurveElementLocation;
                   Coordinate: handle[StepFEA_FeaParametricPoint]) {.
    importcpp: "SetCoordinate", header: "StepFEA_CurveElementLocation.hxx".}
type
  StepFEA_CurveElementLocationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_CurveElementLocation::get_type_name(@)",
                              header: "StepFEA_CurveElementLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_CurveElementLocation::get_type_descriptor(@)",
    header: "StepFEA_CurveElementLocation.hxx".}
proc DynamicType*(this: StepFEA_CurveElementLocation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementLocation.hxx".}