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
  StepElementHArray1OfCurveElementSectionDefinition* {.
      importcpp: "StepElement_HArray1OfCurveElementSectionDefinition",
      header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx", bycopy.} = object of StepElementArray1OfCurveElementSectionDefinition


proc constructStepElementHArray1OfCurveElementSectionDefinition*(theLower: int;
    theUpper: int): StepElementHArray1OfCurveElementSectionDefinition {.
    constructor,
    importcpp: "StepElement_HArray1OfCurveElementSectionDefinition(@)",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc constructStepElementHArray1OfCurveElementSectionDefinition*(theLower: int;
    theUpper: int; theValue: ValueType): StepElementHArray1OfCurveElementSectionDefinition {.
    constructor,
    importcpp: "StepElement_HArray1OfCurveElementSectionDefinition(@)",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc constructStepElementHArray1OfCurveElementSectionDefinition*(
    theOther: StepElementArray1OfCurveElementSectionDefinition): StepElementHArray1OfCurveElementSectionDefinition {.
    constructor,
    importcpp: "StepElement_HArray1OfCurveElementSectionDefinition(@)",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc array1*(this: StepElementHArray1OfCurveElementSectionDefinition): StepElementArray1OfCurveElementSectionDefinition {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc changeArray1*(this: var StepElementHArray1OfCurveElementSectionDefinition): var StepElementArray1OfCurveElementSectionDefinition {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
type
  StepElementHArray1OfCurveElementSectionDefinitionbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfCurveElementSectionDefinition::get_type_name(@)", header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfCurveElementSectionDefinition::get_type_descriptor(@)",
    header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}
proc dynamicType*(this: StepElementHArray1OfCurveElementSectionDefinition): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfCurveElementSectionDefinition.hxx".}














































