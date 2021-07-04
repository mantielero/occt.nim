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
  StepVisual_CameraModelD3MultiClippingUnionSelect,
  StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect,
  ../NCollection/NCollection_DefineHArray1

type
  StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect* {.
      importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect",
      header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx",
      bycopy.} = object of StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect


proc constructStepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc constructStepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc constructStepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect*(
    theOther: StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect): StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc Array1*(this: StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect): StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc ChangeArray1*(this: var StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect): var StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
type
  StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelectbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect::get_type_name(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc DynamicType*(this: StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}