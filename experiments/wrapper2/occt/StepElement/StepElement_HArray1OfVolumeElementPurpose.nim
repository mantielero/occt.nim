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
  StepElementHArray1OfVolumeElementPurpose* {.
      importcpp: "StepElement_HArray1OfVolumeElementPurpose",
      header: "StepElement_HArray1OfVolumeElementPurpose.hxx", bycopy.} = object of StepElementArray1OfVolumeElementPurpose


proc constructStepElementHArray1OfVolumeElementPurpose*(theLower: int;
    theUpper: int): StepElementHArray1OfVolumeElementPurpose {.constructor,
    importcpp: "StepElement_HArray1OfVolumeElementPurpose(@)",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc constructStepElementHArray1OfVolumeElementPurpose*(theLower: int;
    theUpper: int; theValue: ValueType): StepElementHArray1OfVolumeElementPurpose {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurpose(@)",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc constructStepElementHArray1OfVolumeElementPurpose*(
    theOther: StepElementArray1OfVolumeElementPurpose): StepElementHArray1OfVolumeElementPurpose {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurpose(@)",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc array1*(this: StepElementHArray1OfVolumeElementPurpose): StepElementArray1OfVolumeElementPurpose {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc changeArray1*(this: var StepElementHArray1OfVolumeElementPurpose): var StepElementArray1OfVolumeElementPurpose {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
type
  StepElementHArray1OfVolumeElementPurposebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfVolumeElementPurpose::get_type_name(@)", header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfVolumeElementPurpose::get_type_descriptor(@)",
    header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
proc dynamicType*(this: StepElementHArray1OfVolumeElementPurpose): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_HArray1OfVolumeElementPurpose.hxx".}
