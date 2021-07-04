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

import
  StepDimTol_DatumReferenceElement, StepDimTol_Array1OfDatumReferenceElement,
  ../NCollection/NCollection_DefineHArray1

type
  StepDimTol_HArray1OfDatumReferenceElement* {.
      importcpp: "StepDimTol_HArray1OfDatumReferenceElement",
      header: "StepDimTol_HArray1OfDatumReferenceElement.hxx", bycopy.} = object of StepDimTol_Array1OfDatumReferenceElement


proc constructStepDimTol_HArray1OfDatumReferenceElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepDimTol_HArray1OfDatumReferenceElement {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc constructStepDimTol_HArray1OfDatumReferenceElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepDimTol_HArray1OfDatumReferenceElement {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc constructStepDimTol_HArray1OfDatumReferenceElement*(
    theOther: StepDimTol_Array1OfDatumReferenceElement): StepDimTol_HArray1OfDatumReferenceElement {.
    constructor, importcpp: "StepDimTol_HArray1OfDatumReferenceElement(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc Array1*(this: StepDimTol_HArray1OfDatumReferenceElement): StepDimTol_Array1OfDatumReferenceElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc ChangeArray1*(this: var StepDimTol_HArray1OfDatumReferenceElement): var StepDimTol_Array1OfDatumReferenceElement {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
type
  StepDimTol_HArray1OfDatumReferenceElementbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepDimTol_HArray1OfDatumReferenceElement::get_type_name(@)", header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_HArray1OfDatumReferenceElement::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}
proc DynamicType*(this: StepDimTol_HArray1OfDatumReferenceElement): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_HArray1OfDatumReferenceElement.hxx".}