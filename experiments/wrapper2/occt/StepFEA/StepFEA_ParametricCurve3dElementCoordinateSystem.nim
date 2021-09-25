##  Created on: 2002-12-12
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

discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateDirection"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateSystem"
discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateSystem"
type
  HandleStepFEA_ParametricCurve3dElementCoordinateSystem* = Handle[
      StepFEA_ParametricCurve3dElementCoordinateSystem]

## ! Representation of STEP entity ParametricCurve3dElementCoordinateSystem

type
  StepFEA_ParametricCurve3dElementCoordinateSystem* {.
      importcpp: "StepFEA_ParametricCurve3dElementCoordinateSystem",
      header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                                  ## !
                                                                                                                  ## Empty
                                                                                                                  ## constructor


proc constructStepFEA_ParametricCurve3dElementCoordinateSystem*(): StepFEA_ParametricCurve3dElementCoordinateSystem {.
    constructor,
    importcpp: "StepFEA_ParametricCurve3dElementCoordinateSystem(@)",
    header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
proc init*(this: var StepFEA_ParametricCurve3dElementCoordinateSystem;
          aRepresentationItemName: Handle[TCollectionHAsciiString]; aDirection: Handle[
    StepFEA_ParametricCurve3dElementCoordinateDirection]) {.importcpp: "Init",
    header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
proc direction*(this: StepFEA_ParametricCurve3dElementCoordinateSystem): Handle[
    StepFEA_ParametricCurve3dElementCoordinateDirection] {.noSideEffect,
    importcpp: "Direction",
    header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
proc setDirection*(this: var StepFEA_ParametricCurve3dElementCoordinateSystem;
    direction: Handle[StepFEA_ParametricCurve3dElementCoordinateDirection]) {.
    importcpp: "SetDirection",
    header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
type
  StepFEA_ParametricCurve3dElementCoordinateSystembaseType* = StepFEA_FeaRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_ParametricCurve3dElementCoordinateSystem::get_type_name(@)", header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_ParametricCurve3dElementCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
proc dynamicType*(this: StepFEA_ParametricCurve3dElementCoordinateSystem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_ParametricCurve3dElementCoordinateSystem.hxx".}
