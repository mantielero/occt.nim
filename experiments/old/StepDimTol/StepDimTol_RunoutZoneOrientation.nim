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

discard "forward decl of StepDimTol_RunoutZoneOrientation"
discard "forward decl of StepDimTol_RunoutZoneOrientation"
type
  HandleC1C1* = Handle[StepDimTolRunoutZoneOrientation]

## ! Added for Dimensional Tolerances

type
  StepDimTolRunoutZoneOrientation* {.importcpp: "StepDimTol_RunoutZoneOrientation", header: "StepDimTol_RunoutZoneOrientation.hxx",
                                    bycopy.} = object of StandardTransient


proc constructStepDimTolRunoutZoneOrientation*(): StepDimTolRunoutZoneOrientation {.
    constructor, importcpp: "StepDimTol_RunoutZoneOrientation(@)",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc init*(this: var StepDimTolRunoutZoneOrientation;
          theAngle: Handle[StepBasicPlaneAngleMeasureWithUnit]) {.
    importcpp: "Init", header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc angle*(this: var StepDimTolRunoutZoneOrientation): Handle[
    StepBasicPlaneAngleMeasureWithUnit] {.importcpp: "Angle",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc setAngle*(this: var StepDimTolRunoutZoneOrientation;
              theAngle: Handle[StepBasicPlaneAngleMeasureWithUnit]) {.
    importcpp: "SetAngle", header: "StepDimTol_RunoutZoneOrientation.hxx".}
type
  StepDimTolRunoutZoneOrientationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_RunoutZoneOrientation::get_type_name(@)",
                            header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_RunoutZoneOrientation::get_type_descriptor(@)",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}
proc dynamicType*(this: StepDimTolRunoutZoneOrientation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_RunoutZoneOrientation.hxx".}