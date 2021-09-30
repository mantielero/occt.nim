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

type
  StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect* {.
      importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect",
      header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx",
      bycopy.} = object of StepVisualArray1OfCameraModelD3MultiClippingUnionSelect


proc constructStepVisualHArray1OfCameraModelD3MultiClippingUnionSelect*(
    theLower: int; theUpper: int): StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc constructStepVisualHArray1OfCameraModelD3MultiClippingUnionSelect*(
    theLower: int; theUpper: int; theValue: ValueType): StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc constructStepVisualHArray1OfCameraModelD3MultiClippingUnionSelect*(
    theOther: StepVisualArray1OfCameraModelD3MultiClippingUnionSelect): StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect {.
    constructor,
    importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc array1*(this: StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect): StepVisualArray1OfCameraModelD3MultiClippingUnionSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect): var StepVisualArray1OfCameraModelD3MultiClippingUnionSelect {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
type
  StepVisualHArray1OfCameraModelD3MultiClippingUnionSelectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect::get_type_name(@)", header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}
proc dynamicType*(this: StepVisualHArray1OfCameraModelD3MultiClippingUnionSelect): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect.hxx".}














































