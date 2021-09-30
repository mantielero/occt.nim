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
  StepDimTolHArray1OfDatumReferenceModifier* {.
      importcpp: "StepDimTol_HArray1OfDatumReferenceModifier",
      header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx", bycopy.} = object of StepDimTolArray1OfDatumReferenceModifier


proc constructStepDimTolHArray1OfDatumReferenceModifier*(theLower: int;
    theUpper: int): StepDimTolHArray1OfDatumReferenceModifier {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumReferenceModifier(@)",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceModifier*(theLower: int;
    theUpper: int; theValue: ValueType): StepDimTolHArray1OfDatumReferenceModifier {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceModifier(@)",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceModifier*(
    theOther: StepDimTolArray1OfDatumReferenceModifier): StepDimTolHArray1OfDatumReferenceModifier {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceModifier(@)",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc array1*(this: StepDimTolHArray1OfDatumReferenceModifier): StepDimTolArray1OfDatumReferenceModifier {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfDatumReferenceModifier): var StepDimTolArray1OfDatumReferenceModifier {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
type
  StepDimTolHArray1OfDatumReferenceModifierbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReferenceModifier::get_type_name(@)", header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfDatumReferenceModifier::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfDatumReferenceModifier): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfDatumReferenceModifier.hxx".}














































