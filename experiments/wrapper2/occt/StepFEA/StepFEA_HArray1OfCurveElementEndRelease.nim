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
  StepFEA_HArray1OfCurveElementEndRelease* {.
      importcpp: "StepFEA_HArray1OfCurveElementEndRelease",
      header: "StepFEA_HArray1OfCurveElementEndRelease.hxx", bycopy.} = object of StepFEA_Array1OfCurveElementEndRelease


proc constructStepFEA_HArray1OfCurveElementEndRelease*(theLower: int; theUpper: int): StepFEA_HArray1OfCurveElementEndRelease {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndRelease(@)",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc constructStepFEA_HArray1OfCurveElementEndRelease*(theLower: int;
    theUpper: int; theValue: ValueType): StepFEA_HArray1OfCurveElementEndRelease {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndRelease(@)",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc constructStepFEA_HArray1OfCurveElementEndRelease*(
    theOther: StepFEA_Array1OfCurveElementEndRelease): StepFEA_HArray1OfCurveElementEndRelease {.
    constructor, importcpp: "StepFEA_HArray1OfCurveElementEndRelease(@)",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc array1*(this: StepFEA_HArray1OfCurveElementEndRelease): StepFEA_Array1OfCurveElementEndRelease {.
    noSideEffect, importcpp: "Array1",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc changeArray1*(this: var StepFEA_HArray1OfCurveElementEndRelease): var StepFEA_Array1OfCurveElementEndRelease {.
    importcpp: "ChangeArray1",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
type
  StepFEA_HArray1OfCurveElementEndReleasebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepFEA_HArray1OfCurveElementEndRelease::get_type_name(@)", header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_HArray1OfCurveElementEndRelease::get_type_descriptor(@)",
    header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
proc dynamicType*(this: StepFEA_HArray1OfCurveElementEndRelease): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_HArray1OfCurveElementEndRelease.hxx".}
