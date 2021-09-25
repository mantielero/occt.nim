##  Created on: 2016-10-25
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect* {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx",
      bycopy.} = object of StepVisualArray1OfCameraModelD3MultiClippingInterectionSelect


proc constructStepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect*(
    theLower: int; theUpper: int): StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect {.
    constructor, importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc constructStepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect*(
    theLower: int; theUpper: int; theValue: ValueType): StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect {.
    constructor, importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc constructStepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect*(
    theOther: StepVisualArray1OfCameraModelD3MultiClippingInterectionSelect): StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect {.
    constructor, importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc array1*(this: StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect): StepVisualArray1OfCameraModelD3MultiClippingInterectionSelect {.
    noSideEffect, importcpp: "Array1", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect): var StepVisualArray1OfCameraModelD3MultiClippingInterectionSelect {.
    importcpp: "ChangeArray1", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
type
  StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect::get_type_name(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect::get_type_descriptor(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
proc dynamicType*(this: StepVisualHArray1OfCameraModelD3MultiClippingInterectionSelect): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect.hxx".}
