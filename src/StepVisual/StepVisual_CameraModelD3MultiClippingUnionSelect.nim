##  Created on: 2016-11-14
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Plane"
discard "forward decl of StepVisual_CameraModelD3MultiClippingIntersection"
type
  StepVisualCameraModelD3MultiClippingUnionSelect* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingUnionSelect",
      header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## CameraModelD3MultiClippingUnionSelect
                                                                                                       ## select
                                                                                                       ## type


proc constructStepVisualCameraModelD3MultiClippingUnionSelect*(): StepVisualCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc caseNum*(this: StepVisualCameraModelD3MultiClippingUnionSelect;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc plane*(this: StepVisualCameraModelD3MultiClippingUnionSelect): Handle[
    StepGeomPlane] {.noSideEffect, importcpp: "Plane", header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc cameraModelD3MultiClippingIntersection*(
    this: StepVisualCameraModelD3MultiClippingUnionSelect): Handle[
    StepVisualCameraModelD3MultiClippingIntersection] {.noSideEffect,
    importcpp: "CameraModelD3MultiClippingIntersection",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}

























