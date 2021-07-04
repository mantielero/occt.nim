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
  StepFEA_CurveElementEndOffset, StepFEA_Array1OfCurveElementEndOffset,
  ../NCollection/NCollection_DefineHArray1

type
  StepFEA_HArray1OfCurveElementEndOffset* {.
      importcpp: "StepFEA_HArray1OfCurveElementEndOffset",
      header: "StepFEA_HArray1OfCurveElementEndOffset.hxx", bycopy.} = object of StepFEA_Array1OfCurveElementEndOffset


proc constructStepFEA_HArray1OfCurveElementEndOffset*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepFEA_HArray1OfCurveElementEndOffset {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndOffset(@)",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc constructStepFEA_HArray1OfCurveElementEndOffset*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepFEA_HArray1OfCurveElementEndOffset {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndOffset(@)",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc constructStepFEA_HArray1OfCurveElementEndOffset*(
    theOther: StepFEA_Array1OfCurveElementEndOffset): StepFEA_HArray1OfCurveElementEndOffset {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndOffset(@)",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc Array1*(this: StepFEA_HArray1OfCurveElementEndOffset): StepFEA_Array1OfCurveElementEndOffset {.
    noSideEffect, importcpp: "Array1",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc ChangeArray1*(this: var StepFEA_HArray1OfCurveElementEndOffset): var StepFEA_Array1OfCurveElementEndOffset {.
    importcpp: "ChangeArray1",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
type
  StepFEA_HArray1OfCurveElementEndOffsetbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepFEA_HArray1OfCurveElementEndOffset::get_type_name(@)", header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_HArray1OfCurveElementEndOffset::get_type_descriptor(@)",
    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}
proc DynamicType*(this: StepFEA_HArray1OfCurveElementEndOffset): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_HArray1OfCurveElementEndOffset.hxx".}