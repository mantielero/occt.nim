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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_FeaRepresentationItem

discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_AlignedSurface3dElementCoordinateSystem"
discard "forward decl of StepFEA_AlignedSurface3dElementCoordinateSystem"
type
  Handle_StepFEA_AlignedSurface3dElementCoordinateSystem* = handle[
      StepFEA_AlignedSurface3dElementCoordinateSystem]

## ! Representation of STEP entity AlignedSurface3dElementCoordinateSystem

type
  StepFEA_AlignedSurface3dElementCoordinateSystem* {.
      importcpp: "StepFEA_AlignedSurface3dElementCoordinateSystem",
      header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepFEA_AlignedSurface3dElementCoordinateSystem*(): StepFEA_AlignedSurface3dElementCoordinateSystem {.
    constructor, importcpp: "StepFEA_AlignedSurface3dElementCoordinateSystem(@)",
    header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
proc Init*(this: var StepFEA_AlignedSurface3dElementCoordinateSystem;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aCoordinateSystem: handle[StepFEA_FeaAxis2Placement3d]) {.
    importcpp: "Init",
    header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
proc CoordinateSystem*(this: StepFEA_AlignedSurface3dElementCoordinateSystem): handle[
    StepFEA_FeaAxis2Placement3d] {.noSideEffect, importcpp: "CoordinateSystem", header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
proc SetCoordinateSystem*(this: var StepFEA_AlignedSurface3dElementCoordinateSystem;
                         CoordinateSystem: handle[StepFEA_FeaAxis2Placement3d]) {.
    importcpp: "SetCoordinateSystem",
    header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
type
  StepFEA_AlignedSurface3dElementCoordinateSystembase_type* = StepFEA_FeaRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_AlignedSurface3dElementCoordinateSystem::get_type_name(@)", header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_AlignedSurface3dElementCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}
proc DynamicType*(this: StepFEA_AlignedSurface3dElementCoordinateSystem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_AlignedSurface3dElementCoordinateSystem.hxx".}