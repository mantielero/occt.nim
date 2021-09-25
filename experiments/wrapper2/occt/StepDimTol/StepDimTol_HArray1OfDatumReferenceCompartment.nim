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
  StepDimTolHArray1OfDatumReferenceCompartment* {.
      importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment",
      header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx", bycopy.} = object of StepDimTolArray1OfDatumReferenceCompartment


proc constructStepDimTolHArray1OfDatumReferenceCompartment*(theLower: int;
    theUpper: int): StepDimTolHArray1OfDatumReferenceCompartment {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceCompartment*(theLower: int;
    theUpper: int; theValue: ValueType): StepDimTolHArray1OfDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc constructStepDimTolHArray1OfDatumReferenceCompartment*(
    theOther: StepDimTolArray1OfDatumReferenceCompartment): StepDimTolHArray1OfDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc array1*(this: StepDimTolHArray1OfDatumReferenceCompartment): StepDimTolArray1OfDatumReferenceCompartment {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfDatumReferenceCompartment): var StepDimTolArray1OfDatumReferenceCompartment {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
type
  StepDimTolHArray1OfDatumReferenceCompartmentbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment::get_type_name(@)", header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfDatumReferenceCompartment::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfDatumReferenceCompartment): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfDatumReferenceCompartment.hxx".}
