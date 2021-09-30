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

discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_AlignedCurve3dElementCoordinateSystem"
discard "forward decl of StepFEA_AlignedCurve3dElementCoordinateSystem"
type
  HandleC1C1* = Handle[StepFEA_AlignedCurve3dElementCoordinateSystem]

## ! Representation of STEP entity AlignedCurve3dElementCoordinateSystem

type
  StepFEA_AlignedCurve3dElementCoordinateSystem* {.
      importcpp: "StepFEA_AlignedCurve3dElementCoordinateSystem",
      header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepFEA_AlignedCurve3dElementCoordinateSystem*(): StepFEA_AlignedCurve3dElementCoordinateSystem {.
    constructor, importcpp: "StepFEA_AlignedCurve3dElementCoordinateSystem(@)",
    header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
proc init*(this: var StepFEA_AlignedCurve3dElementCoordinateSystem;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aCoordinateSystem: Handle[StepFEA_FeaAxis2Placement3d]) {.
    importcpp: "Init", header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
proc coordinateSystem*(this: StepFEA_AlignedCurve3dElementCoordinateSystem): Handle[
    StepFEA_FeaAxis2Placement3d] {.noSideEffect, importcpp: "CoordinateSystem", header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
proc setCoordinateSystem*(this: var StepFEA_AlignedCurve3dElementCoordinateSystem;
                         coordinateSystem: Handle[StepFEA_FeaAxis2Placement3d]) {.
    importcpp: "SetCoordinateSystem",
    header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
type
  StepFEA_AlignedCurve3dElementCoordinateSystembaseType* = StepFEA_FeaRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_AlignedCurve3dElementCoordinateSystem::get_type_name(@)", header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_AlignedCurve3dElementCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}
proc dynamicType*(this: StepFEA_AlignedCurve3dElementCoordinateSystem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_AlignedCurve3dElementCoordinateSystem.hxx".}

























