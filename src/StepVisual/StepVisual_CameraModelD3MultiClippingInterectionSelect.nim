##  Created on: 2016-10-25
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
discard "forward decl of StepVisual_CameraModelD3MultiClippingUnion"
type
  StepVisualCameraModelD3MultiClippingInterectionSelect* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect",
      header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
           theSize: csize_t): pointer {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator new", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc `delete`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
              theAddress: pointer) {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator delete", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc `new[]`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
             theSize: csize_t): pointer {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator new[]", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc `delete[]`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
                theAddress: pointer) {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator delete[]", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc `new`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator new",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc `delete`*(this: var StepVisualCameraModelD3MultiClippingInterectionSelect;
              a2: pointer; a3: pointer) {.importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect::operator delete", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc constructStepVisualCameraModelD3MultiClippingInterectionSelect*(): StepVisualCameraModelD3MultiClippingInterectionSelect {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect(@)",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc caseNum*(this: StepVisualCameraModelD3MultiClippingInterectionSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc plane*(this: StepVisualCameraModelD3MultiClippingInterectionSelect): Handle[
    StepGeomPlane] {.noSideEffect, importcpp: "Plane", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc cameraModelD3MultiClippingUnion*(this: StepVisualCameraModelD3MultiClippingInterectionSelect): Handle[
    StepVisualCameraModelD3MultiClippingUnion] {.noSideEffect,
    importcpp: "CameraModelD3MultiClippingUnion",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}