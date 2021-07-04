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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Plane"
discard "forward decl of StepVisual_CameraModelD3MultiClippingUnion"
type
  StepVisual_CameraModelD3MultiClippingInterectionSelect* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect",
      header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## a
                                                                                                              ## CameraModelD3MultiClippingInterectionSelect
                                                                                                              ## select
                                                                                                              ## type


proc constructStepVisual_CameraModelD3MultiClippingInterectionSelect*(): StepVisual_CameraModelD3MultiClippingInterectionSelect {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingInterectionSelect(@)",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc CaseNum*(this: StepVisual_CameraModelD3MultiClippingInterectionSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc Plane*(this: StepVisual_CameraModelD3MultiClippingInterectionSelect): handle[
    StepGeom_Plane] {.noSideEffect, importcpp: "Plane", header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}
proc CameraModelD3MultiClippingUnion*(this: StepVisual_CameraModelD3MultiClippingInterectionSelect): handle[
    StepVisual_CameraModelD3MultiClippingUnion] {.noSideEffect,
    importcpp: "CameraModelD3MultiClippingUnion",
    header: "StepVisual_CameraModelD3MultiClippingInterectionSelect.hxx".}