##  Created on: 2015-07-21
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
  StepDimTolHArray1OfDatumSystemOrReference* {.
      importcpp: "StepDimTol_HArray1OfDatumSystemOrReference",
      header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx", bycopy.} = object of StepDimTolArray1OfDatumSystemOrReference


proc constructStepDimTolHArray1OfDatumSystemOrReference*(theLower: int;
    theUpper: int): StepDimTolHArray1OfDatumSystemOrReference {.constructor,
    importcpp: "StepDimTol_HArray1OfDatumSystemOrReference(@)",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc constructStepDimTolHArray1OfDatumSystemOrReference*(theLower: int;
    theUpper: int; theValue: ValueType): StepDimTolHArray1OfDatumSystemOrReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumSystemOrReference(@)",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc constructStepDimTolHArray1OfDatumSystemOrReference*(
    theOther: StepDimTolArray1OfDatumSystemOrReference): StepDimTolHArray1OfDatumSystemOrReference {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumSystemOrReference(@)",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc array1*(this: StepDimTolHArray1OfDatumSystemOrReference): StepDimTolArray1OfDatumSystemOrReference {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfDatumSystemOrReference): var StepDimTolArray1OfDatumSystemOrReference {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
type
  StepDimTolHArray1OfDatumSystemOrReferencebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumSystemOrReference::get_type_name(@)", header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfDatumSystemOrReference::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfDatumSystemOrReference): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfDatumSystemOrReference.hxx".}














































