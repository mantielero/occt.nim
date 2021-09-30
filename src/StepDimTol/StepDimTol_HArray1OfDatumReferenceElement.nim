##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  StepDimTolHArray1OfDatumReferenceElement* {.
      importcpp: "StepDimTol_HArray1OfDatumReferenceElement",
      header: "StepDimTol_HArray1OfDatumReferenceElement.hxx", bycopy.} = object of StepDimTolArray1OfDatumReferenceElement


proc constructStepDimTolHArray1OfDatumReferenceElement*(theLower: int;
    theUpper: int): StepDimTolHArray1OfDatumReferenceElement {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceElement*(theLower: int;
    theUpper: int; theValue: ValueType): StepDimTolHArray1OfDatumReferenceElement {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceElement*(
    theOther: StepDimTolArray1OfDatumReferenceElement): StepDimTolHArray1OfDatumReferenceElement {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc array1*(this: StepDimTolHArray1OfDatumReferenceElement): StepDimTolArray1OfDatumReferenceElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfDatumReferenceElement): var StepDimTolArray1OfDatumReferenceElement {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
type
  StepDimTolHArray1OfDatumReferenceElementbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReferenceElement::get_type_name(@)", header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfDatumReferenceElement::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfDatumReferenceElement): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}














































