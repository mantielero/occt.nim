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
  StepRepr_ReprItemAndMeasureWithUnit

discard "forward decl of StepBasic_PlaneAngleMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndPlaneAngleMeasureWithUnit"
type
  Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit* = handle[
      StepRepr_ReprItemAndPlaneAngleMeasureWithUnit]
  StepRepr_ReprItemAndPlaneAngleMeasureWithUnit* {.
      importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit",
      header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx", bycopy.} = object of StepRepr_ReprItemAndMeasureWithUnit


proc constructStepRepr_ReprItemAndPlaneAngleMeasureWithUnit*(): StepRepr_ReprItemAndPlaneAngleMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc SetPlaneAngleMeasureWithUnit*(this: var StepRepr_ReprItemAndPlaneAngleMeasureWithUnit;
    aLMWU: handle[StepBasic_PlaneAngleMeasureWithUnit]) {.
    importcpp: "SetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc GetPlaneAngleMeasureWithUnit*(this: StepRepr_ReprItemAndPlaneAngleMeasureWithUnit): handle[
    StepBasic_PlaneAngleMeasureWithUnit] {.noSideEffect,
    importcpp: "GetPlaneAngleMeasureWithUnit",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
type
  StepRepr_ReprItemAndPlaneAngleMeasureWithUnitbase_type* = StepRepr_ReprItemAndMeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit::get_type_name(@)", header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndPlaneAngleMeasureWithUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_ReprItemAndPlaneAngleMeasureWithUnit.hxx".}