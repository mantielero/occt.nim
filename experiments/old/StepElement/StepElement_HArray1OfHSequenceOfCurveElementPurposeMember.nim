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
  StepElementHArray1OfHSequenceOfCurveElementPurposeMember* {.
      importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember",
      header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx",
      bycopy.} = object of StepElementArray1OfHSequenceOfCurveElementPurposeMember


proc constructStepElementHArray1OfHSequenceOfCurveElementPurposeMember*(
    theLower: int; theUpper: int): StepElementHArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc constructStepElementHArray1OfHSequenceOfCurveElementPurposeMember*(
    theLower: int; theUpper: int; theValue: ValueType): StepElementHArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc constructStepElementHArray1OfHSequenceOfCurveElementPurposeMember*(
    theOther: StepElementArray1OfHSequenceOfCurveElementPurposeMember): StepElementHArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc array1*(this: StepElementHArray1OfHSequenceOfCurveElementPurposeMember): StepElementArray1OfHSequenceOfCurveElementPurposeMember {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc changeArray1*(this: var StepElementHArray1OfHSequenceOfCurveElementPurposeMember): var StepElementArray1OfHSequenceOfCurveElementPurposeMember {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
type
  StepElementHArray1OfHSequenceOfCurveElementPurposeMemberbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::get_type_name(@)", header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc dynamicType*(this: StepElementHArray1OfHSequenceOfCurveElementPurposeMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}














































