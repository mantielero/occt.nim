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

discard "forward decl of StepShape_QualifiedRepresentationItem"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnitAndQRI"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnitAndQRI"
type
  Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI* = handle[
      StepRepr_ReprItemAndMeasureWithUnitAndQRI]

## ! Base class for complex types (MEASURE_REPRESENTATION_ITEM, MEASURE_WITH_UNIT, QUALIFIED_REPRESENTATION_ITEM
## ! REPRESENTATION_ITEM, LENGTH_MEASURE_WITH_UNIT/PLANE_ANGLE_MEASURE_WITH_UNIT).

type
  StepRepr_ReprItemAndMeasureWithUnitAndQRI* {.
      importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI",
      header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx", bycopy.} = object of StepRepr_ReprItemAndMeasureWithUnit


proc constructStepRepr_ReprItemAndMeasureWithUnitAndQRI*(): StepRepr_ReprItemAndMeasureWithUnitAndQRI {.
    constructor, importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc Init*(this: var StepRepr_ReprItemAndMeasureWithUnitAndQRI;
          aMWU: handle[StepBasic_MeasureWithUnit];
          aRI: handle[StepRepr_RepresentationItem];
          aQRI: handle[StepShape_QualifiedRepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc SetQualifiedRepresentationItem*(this: var StepRepr_ReprItemAndMeasureWithUnitAndQRI;
    aQRI: handle[StepShape_QualifiedRepresentationItem]) {.
    importcpp: "SetQualifiedRepresentationItem",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc GetQualifiedRepresentationItem*(this: StepRepr_ReprItemAndMeasureWithUnitAndQRI): handle[
    StepShape_QualifiedRepresentationItem] {.noSideEffect,
    importcpp: "GetQualifiedRepresentationItem",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
type
  StepRepr_ReprItemAndMeasureWithUnitAndQRIbase_type* = StepRepr_ReprItemAndMeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI::get_type_name(@)", header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndMeasureWithUnitAndQRI): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}