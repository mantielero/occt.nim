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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentationItem

discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnit"
type
  Handle_StepRepr_ReprItemAndMeasureWithUnit* = handle[
      StepRepr_ReprItemAndMeasureWithUnit]

## ! Base class for complex types (MEASURE_REPRESENTATION_ITEM, MEASURE_WITH_UNIT,
## ! REPRESENTATION_ITEM, LENGTH_MEASURE_WITH_UNIT/PLANE_ANGLE_MEASURE_WITH_UNIT).

type
  StepRepr_ReprItemAndMeasureWithUnit* {.importcpp: "StepRepr_ReprItemAndMeasureWithUnit", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx",
                                        bycopy.} = object of StepRepr_RepresentationItem


proc constructStepRepr_ReprItemAndMeasureWithUnit*(): StepRepr_ReprItemAndMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc Init*(this: var StepRepr_ReprItemAndMeasureWithUnit;
          aMWU: handle[StepBasic_MeasureWithUnit];
          aRI: handle[StepRepr_RepresentationItem]) {.importcpp: "Init",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc GetMeasureRepresentationItem*(this: StepRepr_ReprItemAndMeasureWithUnit): handle[
    StepRepr_MeasureRepresentationItem] {.noSideEffect,
    importcpp: "GetMeasureRepresentationItem",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc SetMeasureWithUnit*(this: var StepRepr_ReprItemAndMeasureWithUnit;
                        aMWU: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetMeasureWithUnit",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc GetMeasureWithUnit*(this: StepRepr_ReprItemAndMeasureWithUnit): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "GetMeasureWithUnit", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc GetRepresentationItem*(this: StepRepr_ReprItemAndMeasureWithUnit): handle[
    StepRepr_RepresentationItem] {.noSideEffect,
                                  importcpp: "GetRepresentationItem", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
type
  StepRepr_ReprItemAndMeasureWithUnitbase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndMeasureWithUnit::get_type_name(@)",
                              header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ReprItemAndMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndMeasureWithUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}