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
  StepElementHArray1OfVolumeElementPurposeMember* {.
      importcpp: "StepElement_HArray1OfVolumeElementPurposeMember",
      header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx", bycopy.} = object of StepElementArray1OfVolumeElementPurposeMember


proc constructStepElementHArray1OfVolumeElementPurposeMember*(theLower: int;
    theUpper: int): StepElementHArray1OfVolumeElementPurposeMember {.constructor,
    importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc constructStepElementHArray1OfVolumeElementPurposeMember*(theLower: int;
    theUpper: int; theValue: ValueType): StepElementHArray1OfVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc constructStepElementHArray1OfVolumeElementPurposeMember*(
    theOther: StepElementArray1OfVolumeElementPurposeMember): StepElementHArray1OfVolumeElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfVolumeElementPurposeMember(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc array1*(this: StepElementHArray1OfVolumeElementPurposeMember): StepElementArray1OfVolumeElementPurposeMember {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc changeArray1*(this: var StepElementHArray1OfVolumeElementPurposeMember): var StepElementArray1OfVolumeElementPurposeMember {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
type
  StepElementHArray1OfVolumeElementPurposeMemberbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfVolumeElementPurposeMember::get_type_name(@)", header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfVolumeElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementHArray1OfVolumeElementPurposeMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfVolumeElementPurposeMember.hxx".}














































