##  Created on: 2003-06-02
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  StepDimTolHArray1OfDatumReference* {.importcpp: "StepDimTol_HArray1OfDatumReference", header: "StepDimTol_HArray1OfDatumReference.hxx",
                                      bycopy.} = object of StepDimTolArray1OfDatumReference


proc constructStepDimTolHArray1OfDatumReference*(theLower: int; theUpper: int): StepDimTolHArray1OfDatumReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc constructStepDimTolHArray1OfDatumReference*(theLower: int; theUpper: int;
    theValue: ValueType): StepDimTolHArray1OfDatumReference {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc constructStepDimTolHArray1OfDatumReference*(
    theOther: StepDimTolArray1OfDatumReference): StepDimTolHArray1OfDatumReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReference(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc array1*(this: StepDimTolHArray1OfDatumReference): StepDimTolArray1OfDatumReference {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfDatumReference): var StepDimTolArray1OfDatumReference {.
    importcpp: "ChangeArray1", header: "StepDimTol_HArray1OfDatumReference.hxx".}
type
  StepDimTolHArray1OfDatumReferencebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReference::get_type_name(@)",
                            header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_HArray1OfDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfDatumReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_HArray1OfDatumReference.hxx".}














































