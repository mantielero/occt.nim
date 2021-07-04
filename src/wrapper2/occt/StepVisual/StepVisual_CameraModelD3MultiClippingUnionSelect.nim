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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Plane"
discard "forward decl of StepVisual_CameraModelD3MultiClippingIntersection"
type
  StepVisual_CameraModelD3MultiClippingUnionSelect* {.
      importcpp: "StepVisual_CameraModelD3MultiClippingUnionSelect",
      header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## CameraModelD3MultiClippingUnionSelect
                                                                                                        ## select
                                                                                                        ## type


proc constructStepVisual_CameraModelD3MultiClippingUnionSelect*(): StepVisual_CameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_CameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc CaseNum*(this: StepVisual_CameraModelD3MultiClippingUnionSelect;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc Plane*(this: StepVisual_CameraModelD3MultiClippingUnionSelect): handle[
    StepGeom_Plane] {.noSideEffect, importcpp: "Plane", header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}
proc CameraModelD3MultiClippingIntersection*(
    this: StepVisual_CameraModelD3MultiClippingUnionSelect): handle[
    StepVisual_CameraModelD3MultiClippingIntersection] {.noSideEffect,
    importcpp: "CameraModelD3MultiClippingIntersection",
    header: "StepVisual_CameraModelD3MultiClippingUnionSelect.hxx".}