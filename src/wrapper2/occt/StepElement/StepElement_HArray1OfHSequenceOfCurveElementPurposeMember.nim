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

import
  StepElement_HSequenceOfCurveElementPurposeMember,
  StepElement_Array1OfHSequenceOfCurveElementPurposeMember,
  ../NCollection/NCollection_DefineHArray1

type
  StepElement_HArray1OfHSequenceOfCurveElementPurposeMember* {.
      importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember",
      header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx",
      bycopy.} = object of StepElement_Array1OfHSequenceOfCurveElementPurposeMember


proc constructStepElement_HArray1OfHSequenceOfCurveElementPurposeMember*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc constructStepElement_HArray1OfHSequenceOfCurveElementPurposeMember*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc constructStepElement_HArray1OfHSequenceOfCurveElementPurposeMember*(
    theOther: StepElement_Array1OfHSequenceOfCurveElementPurposeMember): StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {.
    constructor,
    importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc Array1*(this: StepElement_HArray1OfHSequenceOfCurveElementPurposeMember): StepElement_Array1OfHSequenceOfCurveElementPurposeMember {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc ChangeArray1*(this: var StepElement_HArray1OfHSequenceOfCurveElementPurposeMember): var StepElement_Array1OfHSequenceOfCurveElementPurposeMember {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
type
  StepElement_HArray1OfHSequenceOfCurveElementPurposeMemberbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::get_type_name(@)", header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::get_type_descriptor(@)",
    header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}
proc DynamicType*(this: StepElement_HArray1OfHSequenceOfCurveElementPurposeMember): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx".}