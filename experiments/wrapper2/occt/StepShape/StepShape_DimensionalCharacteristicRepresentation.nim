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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_DimensionalCharacteristic, ../Standard/Standard_Transient

discard "forward decl of StepShape_ShapeDimensionRepresentation"
discard "forward decl of StepShape_DimensionalCharacteristic"
discard "forward decl of StepShape_DimensionalCharacteristicRepresentation"
discard "forward decl of StepShape_DimensionalCharacteristicRepresentation"
type
  Handle_StepShape_DimensionalCharacteristicRepresentation* = handle[
      StepShape_DimensionalCharacteristicRepresentation]

## ! Representation of STEP entity DimensionalCharacteristicRepresentation

type
  StepShape_DimensionalCharacteristicRepresentation* {.
      importcpp: "StepShape_DimensionalCharacteristicRepresentation",
      header: "StepShape_DimensionalCharacteristicRepresentation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepShape_DimensionalCharacteristicRepresentation*(): StepShape_DimensionalCharacteristicRepresentation {.
    constructor,
    importcpp: "StepShape_DimensionalCharacteristicRepresentation(@)",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc Init*(this: var StepShape_DimensionalCharacteristicRepresentation;
          aDimension: StepShape_DimensionalCharacteristic;
          aRepresentation: handle[StepShape_ShapeDimensionRepresentation]) {.
    importcpp: "Init",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc Dimension*(this: StepShape_DimensionalCharacteristicRepresentation): StepShape_DimensionalCharacteristic {.
    noSideEffect, importcpp: "Dimension",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc SetDimension*(this: var StepShape_DimensionalCharacteristicRepresentation;
                  Dimension: StepShape_DimensionalCharacteristic) {.
    importcpp: "SetDimension",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc Representation*(this: StepShape_DimensionalCharacteristicRepresentation): handle[
    StepShape_ShapeDimensionRepresentation] {.noSideEffect,
    importcpp: "Representation",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc SetRepresentation*(this: var StepShape_DimensionalCharacteristicRepresentation;
    Representation: handle[StepShape_ShapeDimensionRepresentation]) {.
    importcpp: "SetRepresentation",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
type
  StepShape_DimensionalCharacteristicRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_DimensionalCharacteristicRepresentation::get_type_name(@)", header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_DimensionalCharacteristicRepresentation::get_type_descriptor(@)",
    header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}
proc DynamicType*(this: StepShape_DimensionalCharacteristicRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_DimensionalCharacteristicRepresentation.hxx".}