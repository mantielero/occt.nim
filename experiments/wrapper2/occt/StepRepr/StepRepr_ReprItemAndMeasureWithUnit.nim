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

discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnit"
type
  HandleStepReprReprItemAndMeasureWithUnit* = Handle[
      StepReprReprItemAndMeasureWithUnit]

## ! Base class for complex types (MEASURE_REPRESENTATION_ITEM, MEASURE_WITH_UNIT,
## ! REPRESENTATION_ITEM, LENGTH_MEASURE_WITH_UNIT/PLANE_ANGLE_MEASURE_WITH_UNIT).

type
  StepReprReprItemAndMeasureWithUnit* {.importcpp: "StepRepr_ReprItemAndMeasureWithUnit", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx",
                                       bycopy.} = object of StepReprRepresentationItem


proc constructStepReprReprItemAndMeasureWithUnit*(): StepReprReprItemAndMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc init*(this: var StepReprReprItemAndMeasureWithUnit;
          aMWU: Handle[StepBasicMeasureWithUnit];
          aRI: Handle[StepReprRepresentationItem]) {.importcpp: "Init",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc getMeasureRepresentationItem*(this: StepReprReprItemAndMeasureWithUnit): Handle[
    StepReprMeasureRepresentationItem] {.noSideEffect, importcpp: "GetMeasureRepresentationItem", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc setMeasureWithUnit*(this: var StepReprReprItemAndMeasureWithUnit;
                        aMWU: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetMeasureWithUnit",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc getMeasureWithUnit*(this: StepReprReprItemAndMeasureWithUnit): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "GetMeasureWithUnit", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc getRepresentationItem*(this: StepReprReprItemAndMeasureWithUnit): Handle[
    StepReprRepresentationItem] {.noSideEffect,
                                 importcpp: "GetRepresentationItem", header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
type
  StepReprReprItemAndMeasureWithUnitbaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_ReprItemAndMeasureWithUnit::get_type_name(@)",
                            header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ReprItemAndMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
proc dynamicType*(this: StepReprReprItemAndMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ReprItemAndMeasureWithUnit.hxx".}
