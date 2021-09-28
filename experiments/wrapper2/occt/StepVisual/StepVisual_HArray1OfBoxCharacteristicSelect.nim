##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  StepVisualHArray1OfBoxCharacteristicSelect* {.
      importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect",
      header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx", bycopy.} = object of StepVisualArray1OfBoxCharacteristicSelect


proc constructStepVisualHArray1OfBoxCharacteristicSelect*(theLower: int;
    theUpper: int): StepVisualHArray1OfBoxCharacteristicSelect {.constructor,
    importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect(@)",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc constructStepVisualHArray1OfBoxCharacteristicSelect*(theLower: int;
    theUpper: int; theValue: ValueType): StepVisualHArray1OfBoxCharacteristicSelect {.
    constructor, importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect(@)",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc constructStepVisualHArray1OfBoxCharacteristicSelect*(
    theOther: StepVisualArray1OfBoxCharacteristicSelect): StepVisualHArray1OfBoxCharacteristicSelect {.
    constructor, importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect(@)",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc array1*(this: StepVisualHArray1OfBoxCharacteristicSelect): StepVisualArray1OfBoxCharacteristicSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfBoxCharacteristicSelect): var StepVisualArray1OfBoxCharacteristicSelect {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
type
  StepVisualHArray1OfBoxCharacteristicSelectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect::get_type_name(@)", header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfBoxCharacteristicSelect::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}
proc dynamicType*(this: StepVisualHArray1OfBoxCharacteristicSelect): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_HArray1OfBoxCharacteristicSelect.hxx".}














































