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

discard "forward decl of StepShape_QualifiedRepresentationItem"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnitAndQRI"
discard "forward decl of StepRepr_ReprItemAndMeasureWithUnitAndQRI"
type
  HandleC1C1* = Handle[StepReprReprItemAndMeasureWithUnitAndQRI]

## ! Base class for complex types (MEASURE_REPRESENTATION_ITEM, MEASURE_WITH_UNIT, QUALIFIED_REPRESENTATION_ITEM
## ! REPRESENTATION_ITEM, LENGTH_MEASURE_WITH_UNIT/PLANE_ANGLE_MEASURE_WITH_UNIT).

type
  StepReprReprItemAndMeasureWithUnitAndQRI* {.
      importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI",
      header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx", bycopy.} = object of StepReprReprItemAndMeasureWithUnit


proc constructStepReprReprItemAndMeasureWithUnitAndQRI*(): StepReprReprItemAndMeasureWithUnitAndQRI {.
    constructor, importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc init*(this: var StepReprReprItemAndMeasureWithUnitAndQRI;
          aMWU: Handle[StepBasicMeasureWithUnit];
          aRI: Handle[StepReprRepresentationItem];
          aQRI: Handle[StepShapeQualifiedRepresentationItem]) {.importcpp: "Init",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc setQualifiedRepresentationItem*(this: var StepReprReprItemAndMeasureWithUnitAndQRI;
    aQRI: Handle[StepShapeQualifiedRepresentationItem]) {.
    importcpp: "SetQualifiedRepresentationItem",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc getQualifiedRepresentationItem*(this: StepReprReprItemAndMeasureWithUnitAndQRI): Handle[
    StepShapeQualifiedRepresentationItem] {.noSideEffect,
    importcpp: "GetQualifiedRepresentationItem",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
type
  StepReprReprItemAndMeasureWithUnitAndQRIbaseType* = StepReprReprItemAndMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI::get_type_name(@)", header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ReprItemAndMeasureWithUnitAndQRI::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}
proc dynamicType*(this: StepReprReprItemAndMeasureWithUnitAndQRI): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ReprItemAndMeasureWithUnitAndQRI.hxx".}