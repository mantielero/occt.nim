##  Created on: 2015-07-22
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
  StepRepr_ReprItemAndMeasureWithUnitAndQRI

discard "forward decl of StepBasic_PlaneAngleMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI"
type
  Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI* = handle[
      StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI]
  StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI* {.
      importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI",
      header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx", bycopy.} = object of StepRepr_ReprItemAndMeasureWithUnitAndQRI


proc constructStepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI*(): StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI {.
    constructor,
    importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}
proc SetPlaneAngleMeasureWithUnit*(this: var StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI;
    aLMWU: handle[StepBasic_PlaneAngleMeasureWithUnit]) {.
    importcpp: "SetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}
proc GetPlaneAngleMeasureWithUnit*(this: StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI): handle[
    StepBasic_PlaneAngleMeasureWithUnit] {.noSideEffect,
    importcpp: "GetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}
type
  StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRIbase_type* = StepRepr_ReprItemAndMeasureWithUnitAndQRI

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI::get_type_name(@)", header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI.hxx".}