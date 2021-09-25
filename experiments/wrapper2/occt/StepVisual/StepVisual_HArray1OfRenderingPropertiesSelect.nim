##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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
  StepVisualHArray1OfRenderingPropertiesSelect* {.
      importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect",
      header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx", bycopy.} = object of StepVisualArray1OfRenderingPropertiesSelect


proc constructStepVisualHArray1OfRenderingPropertiesSelect*(theLower: int;
    theUpper: int): StepVisualHArray1OfRenderingPropertiesSelect {.constructor,
    importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc constructStepVisualHArray1OfRenderingPropertiesSelect*(theLower: int;
    theUpper: int; theValue: ValueType): StepVisualHArray1OfRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc constructStepVisualHArray1OfRenderingPropertiesSelect*(
    theOther: StepVisualArray1OfRenderingPropertiesSelect): StepVisualHArray1OfRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc array1*(this: StepVisualHArray1OfRenderingPropertiesSelect): StepVisualArray1OfRenderingPropertiesSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfRenderingPropertiesSelect): var StepVisualArray1OfRenderingPropertiesSelect {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
type
  StepVisualHArray1OfRenderingPropertiesSelectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect::get_type_name(@)", header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfRenderingPropertiesSelect::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
proc dynamicType*(this: StepVisualHArray1OfRenderingPropertiesSelect): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_HArray1OfRenderingPropertiesSelect.hxx".}
