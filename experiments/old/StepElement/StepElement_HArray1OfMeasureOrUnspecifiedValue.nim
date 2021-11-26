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
  StepElementHArray1OfMeasureOrUnspecifiedValue* {.
      importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue",
      header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx", bycopy.} = object of StepElementArray1OfMeasureOrUnspecifiedValue


proc constructStepElementHArray1OfMeasureOrUnspecifiedValue*(theLower: int;
    theUpper: int): StepElementHArray1OfMeasureOrUnspecifiedValue {.constructor,
    importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue(@)",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc constructStepElementHArray1OfMeasureOrUnspecifiedValue*(theLower: int;
    theUpper: int; theValue: ValueType): StepElementHArray1OfMeasureOrUnspecifiedValue {.
    constructor, importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue(@)",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc constructStepElementHArray1OfMeasureOrUnspecifiedValue*(
    theOther: StepElementArray1OfMeasureOrUnspecifiedValue): StepElementHArray1OfMeasureOrUnspecifiedValue {.
    constructor, importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue(@)",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc array1*(this: StepElementHArray1OfMeasureOrUnspecifiedValue): StepElementArray1OfMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc changeArray1*(this: var StepElementHArray1OfMeasureOrUnspecifiedValue): var StepElementArray1OfMeasureOrUnspecifiedValue {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
type
  StepElementHArray1OfMeasureOrUnspecifiedValuebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue::get_type_name(@)", header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfMeasureOrUnspecifiedValue::get_type_descriptor(@)",
    header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}
proc dynamicType*(this: StepElementHArray1OfMeasureOrUnspecifiedValue): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx".}














































