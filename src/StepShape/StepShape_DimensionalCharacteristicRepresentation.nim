##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of StepShape_ShapeDimensionRepresentation"
discard "forward decl of StepShape_DimensionalCharacteristic"
discard "forward decl of StepShape_DimensionalCharacteristicRepresentation"
discard "forward decl of StepShape_DimensionalCharacteristicRepresentation"
type
  HandleC1C1* = Handle[StepShapeDimensionalCharacteristicRepresentation]

## ! Representation of STEP entity DimensionalCharacteristicRepresentation

type
  StepShapeDimensionalCharacteristicRepresentation* {.
      importcpp: "StepShape_DimensionalCharacteristicRepresentation",
      header: "StepShape_DimensionalCharacteristicRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepShapeDimensionalCharacteristicRepresentation*(): StepShapeDimensionalCharacteristicRepresentation {.
    constructor,
    importcpp: "StepShape_DimensionalCharacteristicRepresentation(@)",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc init*(this: var StepShapeDimensionalCharacteristicRepresentation;
          aDimension: StepShapeDimensionalCharacteristic;
          aRepresentation: Handle[StepShapeShapeDimensionRepresentation]) {.
    importcpp: "Init",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc dimension*(this: StepShapeDimensionalCharacteristicRepresentation): StepShapeDimensionalCharacteristic {.
    noSideEffect, importcpp: "Dimension",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc setDimension*(this: var StepShapeDimensionalCharacteristicRepresentation;
                  dimension: StepShapeDimensionalCharacteristic) {.
    importcpp: "SetDimension",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc representation*(this: StepShapeDimensionalCharacteristicRepresentation): Handle[
    StepShapeShapeDimensionRepresentation] {.noSideEffect,
    importcpp: "Representation",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc setRepresentation*(this: var StepShapeDimensionalCharacteristicRepresentation;
    representation: Handle[StepShapeShapeDimensionRepresentation]) {.
    importcpp: "SetRepresentation",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
type
  StepShapeDimensionalCharacteristicRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_DimensionalCharacteristicRepresentation::get_type_name(@)", header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_DimensionalCharacteristicRepresentation::get_type_descriptor(@)",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc dynamicType*(this: StepShapeDimensionalCharacteristicRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}