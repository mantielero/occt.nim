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
  StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember* {.
      importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember", header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx",
      bycopy.} = object of StepElementArray1OfHSequenceOfSurfaceElementPurposeMember


proc constructStepElementHArray1OfHSequenceOfSurfaceElementPurposeMember*(
    theLower: int; theUpper: int): StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc constructStepElementHArray1OfHSequenceOfSurfaceElementPurposeMember*(
    theLower: int; theUpper: int; theValue: ValueType): StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc constructStepElementHArray1OfHSequenceOfSurfaceElementPurposeMember*(
    theOther: StepElementArray1OfHSequenceOfSurfaceElementPurposeMember): StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember {.
    constructor, importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc array1*(this: StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember): StepElementArray1OfHSequenceOfSurfaceElementPurposeMember {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc changeArray1*(this: var StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember): var StepElementArray1OfHSequenceOfSurfaceElementPurposeMember {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
type
  StepElementHArray1OfHSequenceOfSurfaceElementPurposeMemberbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember::get_type_name(@)", header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementHArray1OfHSequenceOfSurfaceElementPurposeMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx".}














































