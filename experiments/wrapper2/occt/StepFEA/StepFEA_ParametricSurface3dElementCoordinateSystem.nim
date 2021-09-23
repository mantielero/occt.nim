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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, StepFEA_FeaRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_ParametricSurface3dElementCoordinateSystem"
discard "forward decl of StepFEA_ParametricSurface3dElementCoordinateSystem"
type
  Handle_StepFEA_ParametricSurface3dElementCoordinateSystem* = handle[
      StepFEA_ParametricSurface3dElementCoordinateSystem]

## ! Representation of STEP entity ParametricSurface3dElementCoordinateSystem

type
  StepFEA_ParametricSurface3dElementCoordinateSystem* {.
      importcpp: "StepFEA_ParametricSurface3dElementCoordinateSystem",
      header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructStepFEA_ParametricSurface3dElementCoordinateSystem*(): StepFEA_ParametricSurface3dElementCoordinateSystem {.
    constructor,
    importcpp: "StepFEA_ParametricSurface3dElementCoordinateSystem(@)",
    header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc Init*(this: var StepFEA_ParametricSurface3dElementCoordinateSystem;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aAxis: Standard_Integer; aAngle: Standard_Real) {.importcpp: "Init",
    header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc Axis*(this: StepFEA_ParametricSurface3dElementCoordinateSystem): Standard_Integer {.
    noSideEffect, importcpp: "Axis",
    header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc SetAxis*(this: var StepFEA_ParametricSurface3dElementCoordinateSystem;
             Axis: Standard_Integer) {.importcpp: "SetAxis", header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc Angle*(this: StepFEA_ParametricSurface3dElementCoordinateSystem): Standard_Real {.
    noSideEffect, importcpp: "Angle",
    header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc SetAngle*(this: var StepFEA_ParametricSurface3dElementCoordinateSystem;
              Angle: Standard_Real) {.importcpp: "SetAngle", header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
type
  StepFEA_ParametricSurface3dElementCoordinateSystembase_type* = StepFEA_FeaRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_ParametricSurface3dElementCoordinateSystem::get_type_name(@)", header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_ParametricSurface3dElementCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}
proc DynamicType*(this: StepFEA_ParametricSurface3dElementCoordinateSystem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_ParametricSurface3dElementCoordinateSystem.hxx".}