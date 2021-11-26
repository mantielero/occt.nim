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
  StepFEA_HArray1OfElementRepresentation* {.
      importcpp: "StepFEA_HArray1OfElementRepresentation",
      header: "StepFEA_HArray1OfElementRepresentation.hxx", bycopy.} = object of StepFEA_Array1OfElementRepresentation


proc constructStepFEA_HArray1OfElementRepresentation*(theLower: int; theUpper: int): StepFEA_HArray1OfElementRepresentation {.
    constructor, importcpp: "StepFEA_HArray1OfElementRepresentation(@)",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc constructStepFEA_HArray1OfElementRepresentation*(theLower: int; theUpper: int;
    theValue: ValueType): StepFEA_HArray1OfElementRepresentation {.constructor,
    importcpp: "StepFEA_HArray1OfElementRepresentation(@)",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc constructStepFEA_HArray1OfElementRepresentation*(
    theOther: StepFEA_Array1OfElementRepresentation): StepFEA_HArray1OfElementRepresentation {.
    constructor, importcpp: "StepFEA_HArray1OfElementRepresentation(@)",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc array1*(this: StepFEA_HArray1OfElementRepresentation): StepFEA_Array1OfElementRepresentation {.
    noSideEffect, importcpp: "Array1",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc changeArray1*(this: var StepFEA_HArray1OfElementRepresentation): var StepFEA_Array1OfElementRepresentation {.
    importcpp: "ChangeArray1",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
type
  StepFEA_HArray1OfElementRepresentationbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepFEA_HArray1OfElementRepresentation::get_type_name(@)", header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_HArray1OfElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_HArray1OfElementRepresentation.hxx".}
proc dynamicType*(this: StepFEA_HArray1OfElementRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepFEA_HArray1OfElementRepresentation.hxx".}














































