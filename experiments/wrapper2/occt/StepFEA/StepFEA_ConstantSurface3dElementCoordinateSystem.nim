##  Created on: 2002-12-26
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_ConstantSurface3dElementCoordinateSystem"
discard "forward decl of StepFEA_ConstantSurface3dElementCoordinateSystem"
type
  HandleStepFEA_ConstantSurface3dElementCoordinateSystem* = Handle[
      StepFEA_ConstantSurface3dElementCoordinateSystem]

## ! Representation of STEP entity ConstantSurface3dElementCoordinateSystem

type
  StepFEA_ConstantSurface3dElementCoordinateSystem* {.
      importcpp: "StepFEA_ConstantSurface3dElementCoordinateSystem",
      header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                                  ## !
                                                                                                                  ## Empty
                                                                                                                  ## constructor


proc constructStepFEA_ConstantSurface3dElementCoordinateSystem*(): StepFEA_ConstantSurface3dElementCoordinateSystem {.
    constructor,
    importcpp: "StepFEA_ConstantSurface3dElementCoordinateSystem(@)",
    header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc init*(this: var StepFEA_ConstantSurface3dElementCoordinateSystem;
          aRepresentationItemName: Handle[TCollectionHAsciiString]; aAxis: int;
          aAngle: float) {.importcpp: "Init", header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc axis*(this: StepFEA_ConstantSurface3dElementCoordinateSystem): int {.
    noSideEffect, importcpp: "Axis",
    header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc setAxis*(this: var StepFEA_ConstantSurface3dElementCoordinateSystem; axis: int) {.
    importcpp: "SetAxis",
    header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc angle*(this: StepFEA_ConstantSurface3dElementCoordinateSystem): float {.
    noSideEffect, importcpp: "Angle",
    header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc setAngle*(this: var StepFEA_ConstantSurface3dElementCoordinateSystem;
              angle: float) {.importcpp: "SetAngle", header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
type
  StepFEA_ConstantSurface3dElementCoordinateSystembaseType* = StepFEA_FeaRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_ConstantSurface3dElementCoordinateSystem::get_type_name(@)", header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_ConstantSurface3dElementCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
proc dynamicType*(this: StepFEA_ConstantSurface3dElementCoordinateSystem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_ConstantSurface3dElementCoordinateSystem.hxx".}
