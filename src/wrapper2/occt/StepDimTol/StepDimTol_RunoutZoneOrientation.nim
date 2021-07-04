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
  StepDimTol_RunoutZoneOrientation, ../Standard/Standard_Transient,
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_PlaneAngleMeasureWithUnit

discard "forward decl of StepDimTol_RunoutZoneOrientation"
discard "forward decl of StepDimTol_RunoutZoneOrientation"
type
  Handle_StepDimTol_RunoutZoneOrientation* = handle[
      StepDimTol_RunoutZoneOrientation]

## ! Added for Dimensional Tolerances

type
  StepDimTol_RunoutZoneOrientation* {.importcpp: "StepDimTol_RunoutZoneOrientation", header: "StepDimTol_RunoutZoneOrientation.hxx",
                                     bycopy.} = object of Standard_Transient


proc constructStepDimTol_RunoutZoneOrientation*(): StepDimTol_RunoutZoneOrientation {.
    constructor, importcpp: "StepDimTol_RunoutZoneOrientation(@)",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc Init*(this: var StepDimTol_RunoutZoneOrientation;
          theAngle: handle[StepBasic_PlaneAngleMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc Angle*(this: var StepDimTol_RunoutZoneOrientation): handle[
    StepBasic_PlaneAngleMeasureWithUnit] {.importcpp: "Angle",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc SetAngle*(this: var StepDimTol_RunoutZoneOrientation;
              theAngle: handle[StepBasic_PlaneAngleMeasureWithUnit]) {.
    importcpp: "SetAngle", header: "StepDimTol_RunoutZoneOrientation.hxx".}
type
  StepDimTol_RunoutZoneOrientationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_RunoutZoneOrientation::get_type_name(@)",
                              header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_RunoutZoneOrientation::get_type_descriptor(@)",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc DynamicType*(this: StepDimTol_RunoutZoneOrientation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}